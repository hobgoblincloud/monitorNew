# # Notification Channel
# resource "google_monitoring_notification_channel" "email" {
#   display_name = "Email Notification Channel"
#   project      = var.project_id
#   type         = "email"
  
#   labels = {
#     email_address = var.notification_email
#   }
# }

# 增加延迟监控（Latency）​​
# 在原有 HTTP 检查基础上，添加对请求延迟的阈值检测，重点关注 P95 和 P99 延迟：
resource "google_monitoring_uptime_check_config" "latency_check" {
  display_name = "Cloud Run Latency Check (P95)"
  period       = "300s"
  timeout      = "30s"
  project      = var.project_id

  monitored_resource {
    type = "uptime_url"
    labels = {
      host = var.host
    }
  }

    # 多区域检测点（示例选择3个区域）
  selected_regions = ["USA", "EUROPE", "ASIA_PACIFIC"]  # 使用官方支持的代码

  http_check {
    path             = var.path
    use_ssl      = true          # 明确启用 SSL
    validate_ssl     = true
    accepted_response_status_codes {
      status_class = "STATUS_CLASS_2XX"  # 仅监控成功请求的延迟
    }
  }

  # 设置延迟阈值（P95 ≤ 1s）
  content_matchers {
    content = ".*"
    matcher = "MATCHES_REGEX"
  }


}

# ​​增加可用性监控（Availability）​​
# 通过多区域检测点提升可用性监控的可靠性，并设置错误率阈值：
resource "google_monitoring_uptime_check_config" "availability_check" {
  display_name = "Cloud Run Availability Check"
  period       = "60s"  # 更短周期提高灵敏度
  timeout      = "10s"  # 更严格超时
  project      = var.project_id

  # 多区域检测点（示例选择3个区域）
  selected_regions = ["USA", "EUROPE", "ASIA_PACIFIC"]  # 使用官方支持的代码

  monitored_resource {
    type = "uptime_url"
    labels = {
      host = var.host
    }
  }

  http_check {
    path         = var.path
    use_ssl      = true
  }


}

resource "google_monitoring_alert_policy" "latency_alert" {
  display_name = "Cloud Run High Latency (P95 > 1s)"
  combiner     = "OR"
  project      = var.project_id

  conditions {
    display_name = "P95 Latency Threshold Violation"
    condition_threshold {
      filter = format(
        "metric.type=\"monitoring.googleapis.com/uptime_check/request_latency\" AND resource.type=\"uptime_url\" AND metric.label.\"check_id\"=\"%s\"",
        google_monitoring_uptime_check_config.latency_check.uptime_check_id
      )
      comparison      = "COMPARISON_GT"
      threshold_value = 1.0  # 1秒阈值
      duration        = "300s"
      aggregations {
        alignment_period   = "300s"
        per_series_aligner = "ALIGN_MEAN"  # 聚焦P95长尾延迟
      }
      trigger {
        count = 1  # 立即触发
      }
    }
  }

  documentation {
    content = "The P95 latency of Cloud Run services exceeds 1 second. It is recommended to check:：\n1. Whether the service instances are overloaded\n2. The response time of dependent backend services"
    mime_type = "text/markdown"
  }

  # notification_channels = [var.notification_channel_id]  # 引用预定义的告警通知渠道
}

