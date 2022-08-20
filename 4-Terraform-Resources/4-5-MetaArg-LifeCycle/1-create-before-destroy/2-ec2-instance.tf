# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-090fa75af13c156b4" # Amazon Linux
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
  tags = {
    "Name" = "web-1"
  }

  lifecycle {
    create_before_destroy = true
  }
}