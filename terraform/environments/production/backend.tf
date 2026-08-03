terraform {
  backend "s3" {
    bucket         = "file-service-tfstate-production-us-east-1"
    key            = "file-service/production/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "file-service-tflocks-production"
    encrypt        = true
  }
}
