terraform {
  backend "s3" {
    bucket = "prasad522-default-terraform-remote-state"  
    key    = "env:/prod/prasad522/default/terraform.tfstate"
    region = "eu-west-1" 
  }
}
