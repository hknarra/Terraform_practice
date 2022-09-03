# Create EC2 Instnace Resource
resource "aws_instance" "myec2vm" {
  
  ami = "ami-05fa00d4c63e32376"
  # instance_type = "t1.micro"
  instance_type = "t2.micro" # update and check
  availability_zone = "us-east-1c"
  key_name = "terraform-key"
  
  tags = {
    "Name" = "ststefile-import-demo"
  }
  
}
