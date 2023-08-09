data "aws_ami" "ami" {
  most_recent=true
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"

}

output "ami"{
  value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sgr-0f8363e4beadb8bcd" ]
}