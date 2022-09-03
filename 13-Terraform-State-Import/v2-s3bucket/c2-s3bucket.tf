# Create S3 Bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "your-terraform-bucket" # state import bucket
  force_destroy = false
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.mybucket.id
  acl = "private"
  
  
}

# terraform import aws_s3_bucket.mybucket your-terraform-bucket