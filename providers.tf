terraform {
  required_version = "1.5.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"

}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "your-s3-bucket-name"
#     key            = "path/to/terraform.tfstate"
#     region         = "your-aws-region"
#     encrypt        = true
#     dynamodb_table = "terraform-lock-table"
#   }
# }
