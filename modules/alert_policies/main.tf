# Notification Channel
# resource "google_monitoring_notification_channel" "email" {
#   display_name = "Email Notification Channel"
#   type         = "email"
#   project      = var.project_id  

#   labels = {
#     email_address = var.notification_email
#     environment   = "common"
#     team          = "sre-team"
#     cost_center   = "cc-sre-default"
#     business_unit = "sre_bu"
#   }
# }

# # Cloud Run Alert Policies
resource "google_monitoring_alert_policy" "cloud_run_cpu" {
  display_name = "daytrader-Cloud Run High Request Latency"
  combiner     = "OR"
  project      = var.project_id

  conditions {
    display_name = "Request Latency Condition"
    condition_threshold {
      filter          = "metric.type=\"run.googleapis.com/request_latencies\" AND resource.type=\"cloud_run_revision\""
      duration        = "300s"
      comparison      = "COMPARISON_GT"
      threshold_value = 0.5
      aggregations {
        alignment_period   = "60s"
        per_series_aligner   = "ALIGN_SUM" # Changed from ALIGN_MEAN to ALIGN_SUM as it is valid for DELTA and DISTRIBUTION
        cross_series_reducer = "REDUCE_MEAN"
      }
    }
  }
  # notification_channels = [google_monitoring_notification_channel.email.id]
}

# Cloud SQL Alert Policies
resource "google_monitoring_alert_policy" "cloud_sql_cpu" {
  display_name = "daytrader-Cloud SQL High CPU Usage"
  combiner     = "OR"
  project      = var.project_id

  conditions {
    display_name = "CPU usage > 85%"
    condition_threshold {
      filter          = "metric.type=\"cloudsql.googleapis.com/database/cpu/utilization\" AND resource.type=\"cloudsql_database\""
      duration        = "300s"
      comparison      = "COMPARISON_GT"
      threshold_value = 0.85
      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }
  # notification_channels = [google_monitoring_notification_channel.email.id]
}

# Redis Memory Alert
resource "google_monitoring_alert_policy" "redis_memory" {
  display_name = "daytrader-Redis High Memory Usage"
  combiner     = "OR"
  project      = var.project_id

  conditions {
    display_name = "Memory usage > 90%"
    condition_threshold {
      filter          = "metric.type=\"redis.googleapis.com/stats/memory/usage_ratio\" AND resource.type=\"redis_instance\""
      duration        = "300s"
      comparison      = "COMPARISON_GT"
      threshold_value = 0.9
      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }
  # notification_channels = [google_monitoring_notification_channel.email.id]
}

# Pub/Sub Alert
resource "google_monitoring_alert_policy" "pubsub_undelivered_messages" {
  display_name = "daytrader-Pub/Sub Undelivered Messages"
  combiner     = "OR"
  project      = var.project_id

  conditions {
    display_name = "Undelivered messages > 1000"
    condition_threshold {
      filter          = "metric.type=\"pubsub.googleapis.com/subscription/num_undelivered_messages\" AND resource.type=\"pubsub_subscription\""
      duration        = "300s"
      comparison      = "COMPARISON_GT"
      threshold_value = 1000
      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }
  # notification_channels = [google_monitoring_notification_channel.email.id]
}