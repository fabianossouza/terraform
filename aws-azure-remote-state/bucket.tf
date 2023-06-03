resource "aws_s3_bucket" "fabiano-001" {
  bucket = "fabiano-001-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.fabiano-001.id
  versioning_configuration {
    status = "Enabled"
  }
}