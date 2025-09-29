
# monitorNew

## 项目简介

本项目为 GCP 多项目监控与日志集中管理的 Terraform 自动化部署方案，涵盖监控指标、仪表盘、日志汇聚、告警策略、SLO、Uptime 检查等一站式能力。

## 功能架构

本工程采用模块化设计，主要包含以下模块：

- **metric_scopes**：配置监控范围，将多个 GCP 项目纳入统一监控域。
- **dashboards**：自动创建 Cloud Run、Cloud Function、Cloud SQL、Redis、Pub/Sub 等服务的监控仪表盘。
- **logging**：集中日志桶配置，支持多项目日志归集与权限自动分配。
- **alert_policies**：为各类服务自动创建告警策略（如高延迟、高 CPU、内存等）。
- **slos**：定义并管理服务级别目标（SLO），如可用性、延迟等。
- **uptime_checks**：配置 Uptime 检查，监控服务可用性与延迟。

## 目录结构

```
├── main.tf                # 主入口，模块集成
├── variables.tf           # 全局变量定义
├── outputs.tf             # 全局输出变量
├── terraform.tfvars       # 变量赋值示例
├── modules/               # 各功能模块
│   ├── metric_scopes/
│   ├── dashboards/
│   │   └── dashboards_json/ # 各类仪表盘 JSON 模板
│   ├── logging/
│   ├── alert_policies/
│   ├── slos/
│   └── uptime_checks/
```

## 主要输入变量（variables）

| 变量名                    | 类型         | 说明                         |
|--------------------------|--------------|------------------------------|
| project_id               | string       | 监控主项目 ID                |
| region                   | string       | 区域，默认 asia-east1        |
| notification_email       | string       | 告警通知邮箱                 |
| cloud_run_service_name   | string       | Cloud Run 服务名             |
| cloud_function_name      | string       | Cloud Function 名称          |
| cloud_sql_instance_name  | string       | Cloud SQL 实例名             |
| redis_instance_name      | string       | Redis 实例名                 |
| pubsub_topic_name        | string       | Pub/Sub 主题名               |
| destination_project_name | string       | 日志集中桶目标项目           |
| source_projects_name     | map(string)  | 日志源项目映射               |
| monitored_projects       | list(string) | 需纳入监控的项目列表         |

## 主要输出变量（outputs）

| 输出名                          | 说明                                   |
|----------------------------------|----------------------------------------|
| metric_scope_ids                 | 监控域关联项目 ID 列表                 |
| metric_scope_names               | 监控域关联项目全名列表                 |
| log_scope_id / log_scope_name    | 日志 Scope 相关信息                    |
| scope_host_project               | 监控/日志 Scope 主机项目               |
| cloud_run_dashboard_id/url       | Cloud Run 仪表盘 ID/URL                |
| cloud_function_dashboard_id/url  | Cloud Function 仪表盘 ID/URL           |
| cloud_sql_postgresql_dashboard_id/url | Cloud SQL 仪表盘 ID/URL           |
| redis_dashboard_id/url           | Redis 仪表盘 ID/URL                    |
| pubsub_dashboard_id/url          | Pub/Sub 仪表盘 ID/URL                  |
| centralized_bucket_id/name       | 日志集中桶 ID/名称                     |
| centralized_bucket_project       | 日志桶所在项目                         |
| centralized_bucket_location      | 日志桶位置                             |
| centralized_bucket_retention_days| 日志保留天数                           |
| centralized_bucket_analytics_enabled | 日志分析功能是否启用               |
| sink_ids/names/writer_identities | 日志 sink 相关信息                     |
| sink_filter                      | 日志过滤表达式                         |
| bucket_writer_members            | 日志写入权限成员列表                   |
| logging_summary                  | 日志配置摘要                           |

## 使用方法

1. 配置 `terraform.tfvars`，填写各项变量。
2. 初始化并部署：
	```bash
	terraform init
	terraform apply
	```
3. 部署完成后，可在 GCP 控制台查看仪表盘、告警、日志桶等资源。

## 参考

- [Google Cloud Monitoring](https://cloud.google.com/monitoring)
- [Google Cloud Logging](https://cloud.google.com/logging)
- [Terraform Google Provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs)