#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo service httpd start  
sudo systemctl enable httpd
#echo "<h1>Welcome to ec2 server webpage created using Terraform in us-east-1 Region</h1>" | sudo tee /var/www/html/index.html
echo "<h1>Welcome to "ec2 server webpage" AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html