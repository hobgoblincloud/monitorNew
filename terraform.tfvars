# ===============================
# GCP project setting
# ===============================
project_id = "daytrader-logging-monitor-jc56"        
region     = "asia-east1"              
# ===============================
# metric scopes setting
# ===============================
monitored_projects = [
  "daytrader-dev-network-itrd",
  "daytrader-dev-services-le2m",
  "daytrader-dev-data-qj18",
  "daytrader-dev-security-tj0n",
  "daytrader-build-e429"
]

# ===============================
# alert mail setting
# ===============================
notification_email = "gpchen@cn.ibm.com"  

# ===============================
# service name setting
# ===============================
# GCP service name
cloud_run_service_name  = "my-cloud-run-service"
cloud_function_name     = "my-cloud-function"
cloud_sql_instance_name = "my-postgresql-instance"
redis_instance_name     = "my-redis-instance"
pubsub_topic_name       = "my-pubsub-topic"

# ===============================
# LOGGING
# ===============================
destination_project_name = "daytrader-logging-monitor-jc56"
source_projects_name = {
    "AA" = "daytrader-dev-data-qj18",
    "BB" = "daytrader-dev-network-itrd",
    "CC" = "daytrader-dev-security-tj0n",
    "DD" = "daytrader-dev-services-le2m",
    "EE" = "daytrader-build-e429",
    "FF" = "daytrader-seed-f69d",
    "GG" = "daytrader-bill-analysis-uyhw",
    "HH" = "daytrader-logging-monitor-jc56"
  }
