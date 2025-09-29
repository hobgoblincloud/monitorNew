variable "project_id" {
  description = "GCP Project ID where the logging will be created"
  type        = string
}

variable "destination_project" {
  description = "ID of the centralized logging project (abcdefg)"
  type        = string
}

variable "source_projects" {
  description = "Map of source project names to IDs"
  type = map(string)
}