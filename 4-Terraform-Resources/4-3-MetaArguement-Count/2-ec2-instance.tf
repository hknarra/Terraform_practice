# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-090fa75af13c156b4" # Amazon Linux
  instance_type = "t2.micro"
  count = 5
  tags = {
    # "Name" = "web"
    "Name" = "web-${count.index}"
  }
}