terraform {
  backend "s3" {
    bucket         = "file-service-tfstate-staging-us-east-1"
    key            = "file-service/staging/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "file-service-tflocks-staging"
    encrypt        = true
  }
}
