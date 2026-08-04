terraform {
  backend "s3" {
    bucket  = "file-service-terraform-state"
    key     = "terraform-state/file-service/production/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
