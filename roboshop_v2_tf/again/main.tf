
variable "ami"{
  default = "ami-03265a0778a880afb"
}
variable "instance_type"{
  default = "t2.micro"
}
#variable "security_group_ids"{
#  default = [ "sg-0b92db49845820fb2" ]
#}
#variable "zone_id"{
#  default = "Z06631553SNW6N7HBTCKR"
#}

variable "components" {
  default = {
    frontend  = { name = "frontend_dev" }
    mongodb   = { name = "mongodb_dev" }
    catalogue = { name = "catalogue_dev" }
    redis     = { name = "redis_dev" }
    user      = { name = "user_dev" }
    cart      = { name = "cart_dev" }
    mysql     = { name = "mysql_dev" }
    shipping  = { name = "shipping_dev" }
    payment   = { name = "payment_dev" }
    rabbitmq  = { name = "rabbitmq_dev" }
    rabbitmq  = { name = "rabbitmq_dev" }
  }
}

resource "aws_instance" "instance" {
  for_each      = var.components
  ami           = var.ami
  instance_type = var.instance_type
  tags = { Name = lookup(each.value,"name",null ) }
}

output "instances" {
  value = aws_instance.instance
}