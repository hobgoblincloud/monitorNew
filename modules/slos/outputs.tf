# # ---------------------------------------------------------------------------
# # channel
# # ---------------------------------------------------------------------------
# output "notification_channel_id" {
#   description = "ID of the common email notification channel"
#   value       = google_monitoring_notification_channel.email.id
# }

# output "notification_channel_name" {
#   description = "Fully-qualified name of the email notification channel"
#   value       = google_monitoring_notification_channel.email.name
# }

# # ---------------------------------------------------------------------------
# # Cloud Run
# # ---------------------------------------------------------------------------
# output "cloud_run_custom_service_id" {
#   description = "Service id of the Cloud Run custom service"
#   value       = google_monitoring_custom_service.cloud_run_service.service_id
# }

# output "cloud_run_availability_slo_id" {
#   description = "SLO id of the Cloud Run availability SLO"
#   value       = google_monitoring_slo.cloud_run_availability.slo_id
# }

# output "cloud_run_availability_slo_name" {
#   description = "Fully-qualified name of the Cloud Run availability SLO"
#   value       = google_monitoring_slo.cloud_run_availability.name
# }

# # ---------------------------------------------------------------------------
# # Cloud SQL
# # ---------------------------------------------------------------------------
# output "cloud_sql_custom_service_id" {
#   description = "Service id of the Cloud SQL custom service"
#   value       = google_monitoring_custom_service.cloud_sql_service.service_id
# }

# output "cloud_sql_availability_slo_id" {
#   description = "SLO id of the Cloud SQL availability SLO"
#   value       = google_monitoring_slo.cloud_sql_availability.slo_id
# }

# output "cloud_sql_availability_slo_name" {
#   description = "Fully-qualified name of the Cloud SQL availability SLO"
#   value       = google_monitoring_slo.cloud_sql_availability.name
# }

# # ---------------------------------------------------------------------------
# # Cloud Function
# # ---------------------------------------------------------------------------
# output "cloud_function_custom_service_id" {
#   description = "Service id of the Cloud Function custom service"
#   value       = google_monitoring_custom_service.cloud_function_service.service_id
# }

# output "cloud_function_availability_slo_id" {
#   description = "SLO id of the Cloud Function availability SLO"
#   value       = google_monitoring_slo.cloud_function_availability.slo_id
# }

# output "cloud_function_availability_slo_name" {
#   description = "Fully-qualified name of the Cloud Function availability SLO"
#   value       = google_monitoring_slo.cloud_function_availability.name
# }

# # ---------------------------------------------------------------------------
# # Burn-rate
# # ---------------------------------------------------------------------------
# output "slo_burn_rate_alert_policy_id" {
#   description = "ID of the SLO burn-rate alert policy"
#   value       = google_monitoring_alert_policy.slo_burn_rate.id
# }

# output "slo_burn_rate_alert_policy_name" {
#   description = "Fully-qualified name of the SLO burn-rate alert policy"
#   value       = google_monitoring_alert_policy.slo_burn_rate.name
# }