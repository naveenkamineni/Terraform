provider "aws" {
  region = "ap-south-1"
}

# Create the S3 bucket with a globally unique name
resource "aws_s3_bucket" "my_bucket" {
  bucket = "naveen-terraform-bucket-8245"
}

# Disable Public Access Block (Allows Public Access)
resource "aws_s3_bucket_public_access_block" "allow_public" {
  bucket                  = aws_s3_bucket.my_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Attach a bucket policy to allow public read access
resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket     = aws_s3_bucket.my_bucket.id
  depends_on = [aws_s3_bucket_public_access_block.allow_public]  # Ensure public access is enabled first

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.my_bucket.arn}/*"
      }
    ]
  })
}

# Enable static website hosting
resource "aws_s3_bucket_website_configuration" "website_config" {
  bucket = aws_s3_bucket.my_bucket.id

  index_document {
    suffix = "index.html"
  }
}
