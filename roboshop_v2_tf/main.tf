
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
    frontend  = { name = "v1_frontend" }
    mongodb   = { name = "v1_mongodb" }
    catalogue = { name = "v1_catalogue" }
    redis     = { name = "v1_redis" }
    user      = { name = "v1_user" }
    cart      = { name = "v1_cart" }
    mysql = { name = "v1_mysql"}
    shipping  = { name = "v1_shipping" }
    rabbitmq  = { name = "v1_rabbitmq" }
    payment   = { name = "v1_payment" }
    dispatch  = { name = "v1_dispatch" }
  }
}
#
#output "components_names"{
##  for_each = var.components
#  value = var.components
#}
#resource "aws_route53_record" "frontend" {
#  zone_id = var.zone_id
#  name    = "frontend.pdevopst74.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}
