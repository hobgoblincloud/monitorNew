# # outputs.tf

# output "notification_channel_id" {
#   description = "The ID of the email notification channel"
#   value       = google_monitoring_notification_channel.email.id
# }

# output "alert_policy_cloud_run_cpu_id" {
#   description = "The ID of the Cloud Run CPU alert policy"
#   value       = google_monitoring_alert_policy.cloud_run_cpu.id
# }

output "alert_policy_cloud_sql_cpu_id" {
  description = "The ID of the Cloud SQL CPU alert policy"
  value       = google_monitoring_alert_policy.cloud_sql_cpu.id
}

output "alert_policy_redis_memory_id" {
  description = "The ID of the Redis memory usage alert policy"
  value       = google_monitoring_alert_policy.redis_memory.id
}

output "alert_policy_pubsub_undelivered_messages_id" {
  description = "The ID of the Pub/Sub undelivered messages alert policy"
  value       = google_monitoring_alert_policy.pubsub_undelivered_messages.id
}

output "project_id" {
  description = "The GCP project ID used in the configuration"
  value       = var.project_id
}

# output "notification_email" {
#   description = "The email address used for notifications"
#   value       = var.notification_email
#   sensitive   = true
# }