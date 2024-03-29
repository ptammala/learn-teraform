variable "components" {
  default=[ "catalogue","frontend","mongodb"]
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

#### Creating ec2 instant using count loop
#resource "aws_instance" "web" {
#  count = length(var.components)
#
#  ami           = "ami-03265a0778a880afb"
#  instance_type = "t2.micro"
#  tags = {
#    Name = element(var.components,count.index)
#  }
#}


################Creating a security group using count loop
resource "aws_security_group" "allow_tls" {

  count = length(var.components)

  name        = element(var.components,count.index )

}