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

variable "components"{
  frontend = { name = "frontend"}
  mongodb =  { name = "mongodb" }
  catalogue =  { name = "catalogue" }
  redis =  { name = "redis" }
  user =  { name = "user" }
  cart =  { name = "cart" }
  shipping =  { name = "shipping" }
  rabbitmq =  { name = "rabbitmq" }
  payment =  { name = "payment" }
  dispactch = { name = "dispactch"}
}

output "components_names"{
#  for_each = var.components
  value = var.components
}
#resource "aws_route53_record" "frontend" {
#  zone_id = var.zone_id
#  name    = "frontend.pdevopst74.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}
