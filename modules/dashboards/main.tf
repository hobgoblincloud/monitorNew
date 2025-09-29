resource "google_monitoring_dashboard" "cloud_run_dashboard" {
  dashboard_json = file("${path.module}/dashboards_json/cloud_run_dashboard.json")
  project        = var.project_id
}

resource "google_monitoring_dashboard" "cloud_function_dashboard" {
  dashboard_json = file("${path.module}/dashboards_json/cloud_function_dashboard.json")
  project        = var.project_id
}

resource "google_monitoring_dashboard" "cloud_sql_postgresql_dashboard" {
  dashboard_json = file("${path.module}/dashboards_json/cloud_sql_postgresql_dashboard.json")
  project        = var.project_id
}

resource "google_monitoring_dashboard" "redis_dashboard" {
  dashboard_json = file("${path.module}/dashboards_json/redis_dashboard.json")
  project        = var.project_id
}

resource "google_monitoring_dashboard" "pubsub_dashboard" {
  dashboard_json = file("${path.module}/dashboards_json/pubsub_dashboard.json")
  project        = var.project_id
}