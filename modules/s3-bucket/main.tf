resource "aws_s3_bucket" "terraform_state" {
  bucket = "prasad522-default-terraform-remote-state"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
    noncurrent_version_expiration {
      days = 30
    }
  }
}