provider "aws" {
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
  region     = var.region
}

resource "aws_vpc" "SonyLiv_Terraform_Dev" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.prefix}-vpc-${var.region}"
    Environment = "DEV"
    SDAWS       = "244"
    POC         = "Terraform"

  }

}

resource "aws_subnet" "SonyLiv_Terraform_Dev" {
  vpc_id     = aws_vpc.SonyLiv_Terraform_Dev.id
  cidr_block = var.subnet_prefix

  tags = {
    Name        = "${var.prefix}-subnet-${var.region}"
    Environment = "DEV"
    SDAWS       = "244"
    POC         = "Terraform"

  }
}

