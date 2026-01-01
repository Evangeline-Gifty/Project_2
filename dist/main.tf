provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-01ca13db604661046"
  instance_type = "t3.micro"
}
