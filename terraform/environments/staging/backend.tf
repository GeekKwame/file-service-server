terraform {
  backend "s3" {
    bucket  = "geekkwame-file-service-tfstate"
    key     = "terraform-state/file-service/staging/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
