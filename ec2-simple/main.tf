terraform {

 required_providers {
  aws = {
   source = "hashicorp/aws"
   }
 }

}

provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "web_server" {
 awmi = "ami-090fa75af13c156b4"
 instance_type = "t2.micro"
}
