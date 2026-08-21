terraform {
  backend "s3" {
    bucket  = "geekkwame-file-service-tfstate"
    key     = "terraform-state/file-service/dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
