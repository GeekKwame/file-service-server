environment               = "dev"
project_name              = "file-service"
aws_region                = "us-east-1"
vpc_cidr                  = "10.0.0.0/16"
availability_zones        = ["us-east-1a", "us-east-1b"]
enable_single_nat_gateway = true
db_instance_class         = "db.t4g.micro"
db_multi_az               = false

# AWS free tier plan caps backup retention and blocks Performance Insights
# and Enhanced Monitoring. Staging and production keep the full defaults.
db_backup_retention_period      = 1
db_performance_insights_enabled = false
db_monitoring_interval          = 0
ecs_cpu                         = 512
ecs_memory                      = 1024
ecs_desired_count               = 1
ecs_min_capacity                = 1
ecs_max_capacity                = 4
ecr_force_delete                = true # Ephemeral environment: destroy must not stall on pushed images
log_retention_days              = 7
enable_custom_domain            = false # Set to true only with a domain you control
domain_name                     = "fileservice.example.com"
route53_zone_id                 = ""
attach_acm_certificate          = false # ALB cannot attach a certificate that has not passed DNS validation

tags = {
  Environment = "dev"
  Owner       = "DevOps Team"
  CostCenter  = "Engineering-Dev"
}
