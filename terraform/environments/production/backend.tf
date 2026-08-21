terraform {
  backend "s3" {
    bucket  = "geekkwame-file-service-tfstate"
    key     = "terraform-state/file-service/production/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
