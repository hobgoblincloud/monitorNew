# outputs.tf

# output "notification_channel_id" {
#   description = "The ID of the email notification channel"
#   value       = google_monitoring_notification_channel.email.id
# }

output "latency_check_id" {
  description = "The ID of the Cloud Run Latency Check (P95) uptime check configuration"
  value       = google_monitoring_uptime_check_config.latency_check.id
}

output "latency_check_name" {
  description = "The display name of the latency check"
  value       = google_monitoring_uptime_check_config.latency_check.display_name
}

output "latency_check_regions" {
  description = "The selected regions for latency monitoring"
  value       = google_monitoring_uptime_check_config.latency_check.selected_regions
}

output "latency_check_url" {
  description = "The monitored URL for latency checks"
  value       = format("https://%s%s", 
    google_monitoring_uptime_check_config.latency_check.monitored_resource[0].labels.host,
    google_monitoring_uptime_check_config.latency_check.http_check[0].path
  )
}

output "availability_check_id" {
  description = "The ID of the Cloud Run Availability Check uptime check configuration"
  value       = google_monitoring_uptime_check_config.availability_check.id
}

output "availability_check_timeout" {
  description = "The timeout setting for availability checks (e.g., 10s)"
  value       = google_monitoring_uptime_check_config.availability_check.timeout
}

output "availability_check_frequency" {
  description = "The check frequency for availability monitoring (e.g., 60s)"
  value       = google_monitoring_uptime_check_config.availability_check.period
}