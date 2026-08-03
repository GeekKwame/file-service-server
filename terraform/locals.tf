locals {
  common_tags = merge(
    var.tags,
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Repository  = "GeekKwame/file-service-server"
    }
  )

  container_image = "${module.ecr.repository_url}:latest"
}
