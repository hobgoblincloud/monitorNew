# #####################################################################
# # 1. 通用通知渠道
# #####################################################################
# resource "google_monitoring_notification_channel" "email" {
#   display_name = "Email Notification Channel"
#   type         = "email"
#   project      = var.project_id

#   labels = {
#     email_address = var.notification_email
#   }
# }

# #####################################################################
# # 2. Cloud Run SLO
# #####################################################################

resource "google_monitoring_service" "my_service"{
  project = var.project_id
  service_id = var.service_name
  display_name = var.service_name
  // If you want to monitor CLOUD_RUN resources in a seperate monitoring project use a customer service. 
  basic_service{
    service_type = "CLOUD_RUN"
    service_labels = {
      "location": var.region,
      "service_name": var.service_name
    }
  }
}

resource "google_monitoring_slo" "custom_request_based_slo" {
  project = var.project_id
  service = google_monitoring_service.my_service.service_id
  display_name = "99% - Availability - Calendar month"
  goal = 0.99
  calendar_period = "MONTH"
  basic_sli {
    availability {
      enabled = true
    }
  }
  depends_on = [ google_monitoring_service.my_service ]
}


