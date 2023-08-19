variable "components" {
  default=["frontend","mongodb","catalogue"]
}

#
#resource "aws_instance" "instance" {
#  count = length(var.components)
#
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
#  tags = {
#    Name = element(var.components, count.index)
#
##    Name = var.components(count.index)
#  }
#}

resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}