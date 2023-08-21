terraform {
  backend "s3" {
    bucket = "tf-state-ptb74"
    key    = "terraform/tfstate"
    region = "us-east-1"
  }
}

variable "test"{
  default = "Hello for state"
}

output "test" {
  value = var.test
}