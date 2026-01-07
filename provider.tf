terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "jimmy-jan26-terraform"
    key = "dev/jimmy/terraform.tfstate"
    encrypt = true
    region = "us-west-1"
    dynamodb_table = "jimmyd2-lockingtable"
  }
}
