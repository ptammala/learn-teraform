
variable "ami"{
  default = "ami-03265a0778a880afb"
}
variable "instance_type"{
  default = "t2.micro"
}
variable "security_group_ids"{
  default = [ "sg-0b92db49845820fb2" ]
}
variable "zone_id"{
  default = "Z06631553SNW6N7HBTCKR"
}
variable "components" {
  default = {
    frontend  = { name = "frontend" }
    mongodb   = { name = "mongodb" }
    catalogue = { name = "catalogue" }
    redis     = { name = "redis" }
    user      = { name = "user" }
    cart      = { name = "cart" }
    mysql = { name = "mysql"}
    shipping  = { name = "shipping" }
    rabbitmq  = { name = "rabbitmq" }
    payment   = { name = "payment" }
    dispatch  = { name = "dispatch" }
  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = lookup(each.value,"name",null )
  }
}
output "instance"{
  value = aws_instance.instance
}
resource "aws_route53_record" "record" {
  for_each = var.components

  zone_id = var.zone_id
  name    = "${lookup(each.value,"name",null)}.pdevopst74.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance,each.key,null),"private_ip",null)]
#  records = [aws_instance.frontend.private_ip]
}

output "test"{
  for_each = var.components
  value = lookup(aws_instance.instance,each.key,null)
}