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
 count = 2
 ami = "ami-090fa75af13c156b4"
 instance_type = "t2.micro"
 tags = {
  Name = "web_server"
 }
}
