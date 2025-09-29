variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "host" {
  description = "host"
  type        = string
  default = "daytrader-transformation-1027546978997.asia-east1.run.app"
}

variable "path" {
  description = "host"
  type        = string
  default = "/daytrader"
}

# variable "notification_email" {
#   description = "Email address to receive uptime alerts"
#   type        = string
# }

