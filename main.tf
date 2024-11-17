provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
  }
}

output "bucket_name" {
  value = aws_s3_bucket.s3_bucket.bucket
}
