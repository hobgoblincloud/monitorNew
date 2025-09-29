variable "project_id" {
  description = "The project ID of the centralized logging and monitoring project."
  type        = string
}

variable "monitored_projects" {
  type = list(string)
  default = [
    "daytrader-dev-network-itrd",
    "daytrader-dev-services-le2m",
    "daytrader-dev-data-qj18",
    "daytrader-dev-security-tj0n"
  ]
}