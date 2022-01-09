provider "aws"  {
    region = "us-east-2"
    version = "~> 2.38.0"
}
resource "aws_instance" "ec2-sumanth" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
    iam_instance_profile = "${aws_iam_instance_profile.admin_profile.name}"
    key_name = "edu"
    tags = {
        Name = "Terraform EC2"
    }
}
