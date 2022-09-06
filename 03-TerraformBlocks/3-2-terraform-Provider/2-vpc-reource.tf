# resource block
# VPC creation
resource "aws_vpc" "hkvpc1" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "myVPC1"
    }
}