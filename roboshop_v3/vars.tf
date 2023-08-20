variable "zone_id" {
  default = "Z06631553SNW6N7HBTCKR"
}

variable "security_group" {
  default = [ "sg-0b92db49845820fb2" ]
}

variable "components" {
  default = {
    frontend = {
      name = "frontend_sg"
      instant_type = "t2.micro"
    }
    cart = {
      name = "cart_sg"
      instant_type = "t2.micro"
    }

  }
}