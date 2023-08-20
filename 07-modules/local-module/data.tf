data "aws_ami" "ami" {
  most_recent=true
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"

}

output "ami"{
  value = data.aws_ami.ami
}

output "ami2"{
  value = data.aws_ami.ami.owners
}


resource "aws_instance" "instance" {

  ami = data.aws_ami.ami.id
  instance_type = var.instant_type
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
}

variable "instant_type" {}