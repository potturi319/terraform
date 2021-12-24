provider "aws" "sumanth" {
    region = "eu-north-1"
}
resource "aws_instance" "ec2-sumanth" {
    ami = "ami-05760f62e0b3eab56"
    instance_type = "t2.micro"
    key_name = "DevOps"
    tags = {
        Name = "Terraform EC2"
    }
}
