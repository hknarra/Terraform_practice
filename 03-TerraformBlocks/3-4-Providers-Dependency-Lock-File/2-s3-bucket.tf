# Resource Block: Create Random Pet Name 
resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket
resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id
  acl    = "public-read"
}