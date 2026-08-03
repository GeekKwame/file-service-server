terraform {
  backend "s3" {
    bucket         = "file-service-tfstate-dev-us-east-1"
    key            = "file-service/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "file-service-tflocks-dev"
    encrypt        = true
  }
}
