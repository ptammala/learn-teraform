
data "aws_ami" "ami" {

  name_regex = "Centos-*"
  owners     = ["697388099436"]
}

output "ami" {
  value = data.aws_ami.ami
}