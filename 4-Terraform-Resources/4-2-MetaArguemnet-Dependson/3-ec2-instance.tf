# reource Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "hk-key1"
  subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  user_data              = file("apache-install.sh")
  /*user_data = <<-EOF
    #! /bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo service httpd start  
    sudo systemctl enable httpd
    echo "<h1>Welcome to "ec2 server webpage" AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
  EOF */
}