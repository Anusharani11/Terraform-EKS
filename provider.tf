# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "dev-state-123"
    key            = "eks.terraform.tfstate"
    region         = "ap-south-1"
    
  }
}
