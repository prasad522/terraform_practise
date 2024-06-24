terraform {
  backend "s3" {
    bucket = "prasad522-default-terraform-remote-state"  // Replace with your actual S3 bucket name
    key    = "prasad522/default/terraform.tfstate"  // Optional: Specify the path to the state file within the bucket
    region = "eu-west-1"  // Replace with your AWS region
  }
}
