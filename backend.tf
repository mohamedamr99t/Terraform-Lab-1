terraform {
  backend "s3" {
    bucket         = "bucket-terraform-lab1"
    key            = "terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}


