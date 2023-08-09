data "aws_ami_ids" "ami" {
  owners = ["973714476881"]
  stock = "Prakash"
}

output "ami"{
  value = data.aws_ami_ids.ami
}

output "ami_C"{
  value = data.aws_ami_ids.ami.stock
}