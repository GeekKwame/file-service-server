variable "environment" { type = string }
variable "project_name" { type = string }
variable "aws_region" { type = string }
variable "vpc_cidr" { type = string }
variable "availability_zones" { type = list(string) }
variable "enable_single_nat_gateway" { type = bool }
variable "db_instance_class" { type = string }
variable "db_multi_az" { type = bool }
variable "db_backup_retention_period" {
  type    = number
  default = 7
}
variable "db_performance_insights_enabled" {
  type    = bool
  default = true
}
variable "db_monitoring_interval" {
  type    = number
  default = 60
}
variable "ecs_cpu" { type = number }
variable "ecs_memory" { type = number }
variable "ecs_desired_count" { type = number }
variable "ecs_min_capacity" { type = number }
variable "ecs_max_capacity" { type = number }
variable "enable_custom_domain" { type = bool }
variable "domain_name" { type = string }
variable "route53_zone_id" { type = string }
variable "attach_acm_certificate" { type = bool }
variable "tags" { type = map(string) }
