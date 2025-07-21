# provider "aws" {
#   alias  = "use1"
#   region = "us-east-1"
# }

# provider "aws" {
#   alias  = "aps1"
#   region = "ap-south-1"
# }

# # Security Group for us-east-1
# resource "aws_security_group" "allow_http_use1" {
#   provider    = aws.use1
#   name        = "allow_http_use1"
#   description = "Allow HTTP traffic"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# # Security Group for ap-south-1
# resource "aws_security_group" "allow_http_aps1" {
#   provider    = aws.aps1
#   name        = "allow_http_aps1"
#   description = "Allow HTTP traffic"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# # EC2 in us-east-1
# resource "aws_instance" "ec2_use1" {
#   provider                  = aws.use1
#   ami                       = "ami-09e6f87a47903347c"
#   instance_type             = "var.instance_type"
  
  
#   associate_public_ip_address = true
#   vpc_security_group_ids    = [aws_security_group.allow_http_use1.id]
#   user_data = file("script.sh")
#   tags = {
#     Name = "EC2-US-EAST-1"
#   }
# }

# # EC2 in ap-south-1
# resource "aws_instance" "ec2_aps1" {
#   provider                  = aws.aps1
#   ami                       = "ami-0b09627181c8d5778"
#   instance_type             = "t2.micro"
#   key_name = "keyaws"
#   associate_public_ip_address = true
#   vpc_security_group_ids    = [aws_security_group.allow_http_aps1.id]

#   user_data = file("script.sh")

#   tags = {
#     Name = "EC2-AP-SOUTH-1"
#   }
# }
