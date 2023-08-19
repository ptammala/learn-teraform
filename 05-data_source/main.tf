
data "aws_ami" "ami" {
#  name = "Centos*"
  owners = ["697388099436"]

}

output "ami" {
  value = data.aws_ami.ami

}