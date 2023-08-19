
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
    frontend  = {}
    mongodb   = {}
    catalogue = {}
    redis     = {}
    user      = {}
    cart      = {}
    mysql     = {}
    shipping  = {}
    payment   = {}
    rabbitmq  = {}
  }
}

resource "aws_instance" "instance" {
  for_each      = var.components
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = lookup(var.components,each.key,null )

  }
}

output "instances" {
  value = aws_instance.instance
}