provider "aws"  {
    region = "eu-north-1"
    version = "~> 2.38.0"
}
resource "aws_instance" "ec2-sumanth" {
    ami = "ami-05760f62e0b3eab56"
    instance_type = "t3.micro"
    key_name = "DevOps"
    tags = {
        Name = "Terraform EC2"
    }
}
