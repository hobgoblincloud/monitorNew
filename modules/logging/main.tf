resource "google_logging_project_bucket_config" "centralized_logs_bucket" {
  project   = var.destination_project
  location  = "global"
  bucket_id = "centralized-logs-bucket"

  # Optional: Enable Log Analytics for advanced querying
  enable_analytics = true

  # Optional: Set log retention (default: 30 days)
  retention_days = 60

}

locals {
  source_projects = var.source_projects
}

resource "google_logging_project_sink" "project_sink" {
  for_each = local.source_projects

  name        = "sink-${each.key}-to-centralized"
  project     = each.value # Source project ID (e.g., "source_project_aa_id")
  destination = "logging.googleapis.com/projects/${var.destination_project}/locations/global/buckets/centralized-logs-bucket"

  # Optional: Filter logs (e.g., only ERROR severity or specific resource types)
  filter = "severity>=ERROR" # Adjust as needed (e.g., "" for all logs)
  depends_on = [ google_logging_project_bucket_config.centralized_logs_bucket ]

}

locals {
  valid_projects = {
    for k, v in google_logging_project_sink.project_sink : k => v.writer_identity
    if v.writer_identity != ""
  }
}

# Grant the sink's writer identity permission to write to the destination bucket
resource "google_project_iam_member" "bucket_writer" {
  for_each = local.valid_projects
  project = var.destination_project
  role    = "roles/logging.bucketWriter"
  member  = google_logging_project_sink.project_sink[each.key].writer_identity
}

