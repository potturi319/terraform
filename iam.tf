resource "aws_iam_role" "admin_role" {
  name = "admin_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
      admin = "sumanth"
  }
}

resource "aws_iam_instance_profile" "admin_profile" {
  name = "admin_profile"
  role = "${aws_iam_role.admin_role.name}"
}



resource "aws_iam_role_policy" "admin_role_policy" {
  name = "admin_role_policy"
  role = "${aws_iam_role.admin_role.id}"

  policy = <<EOF
{
  
      "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    
  ]
}
EOF
}



