terraform {
  backend "s3" {
    bucket = "vcc-terrafrom-bucket"
    key    = "terraform/microservices.tfstate"
    region = "us-east-1"
  }
}
