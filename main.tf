# metric_scopes Module
module "metric_scopes" {
  source = "./modules/metric_scopes"
  
  project_id = var.project_id
}

# Dashboards Module
module "dashboards" {
  source = "./modules/dashboards"
  
  project_id = var.project_id
}

# # Uptime Checks Module
# module "uptime_checks" {
#   source = "./modules/uptime_checks"
  
#   project_id         = var.project_id
#   cloud_run_service  = var.cloud_run_service_name
#   cloud_function     = var.cloud_function_name
#   notification_email = var.notification_email
# }

# # SLOs Module
# module "slos" {
#   source = "./modules/slos"
  
#   project_id         = var.project_id
#   cloud_run_service  = var.cloud_run_service_name
#   cloud_function     = var.cloud_function_name
#   cloud_sql_instance = var.cloud_sql_instance_name
#   notification_email = var.notification_email
# }

# # Alert Policies Module
# module "alert_policies" {
#   source = "./modules/alert_policies"
  
#   project_id           = var.project_id
#   cloud_run_service    = var.cloud_run_service_name
#   cloud_function       = var.cloud_function_name
#   cloud_sql_instance   = var.cloud_sql_instance_name
#   redis_instance       = var.redis_instance_name
#   pubsub_topic_name    = var.pubsub_topic_name
#   notification_email   = var.notification_email
# }

# logging Module
module "logging" {
  source = "./modules/logging"
  
  project_id           = var.project_id
  destination_project  = var.destination_project_name
  source_projects      = var.source_projects_name
}