variable "environment" {
  description = "Execution environment"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "file-service"
}

variable "force_delete" {
  description = "Allow the repository to be destroyed while it still contains images. Enable for ephemeral environments so teardown does not require manually emptying the registry; leave disabled in production."
  type        = bool
  default     = false
}

variable "max_image_count" {
  description = "Maximum number of images to retain in ECR repository"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}
