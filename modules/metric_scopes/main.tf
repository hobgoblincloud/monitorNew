# Attach monitored projects to the Metrics Scope
resource "google_monitoring_monitored_project" "monitored_project" {
  provider      = google-beta
  count         = length(var.monitored_projects)
  metrics_scope = "locations/global/metricsScopes/${var.project_id}"
  name          = "locations/global/metricsScopes/${var.project_id}/projects/${var.monitored_projects[count.index]}"
}

resource "google_logging_log_scope" "log_scope" {
  provider      = google-beta
  name           = "projects/${var.project_id}/locations/global/logScopes/daytrader-development"
  resource_names = [for project in var.monitored_projects : "projects/${project}"]
}