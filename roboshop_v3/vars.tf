variable "zone_id" {
  default = "Z06631553SNW6N7HBTCKR"
}

variable "security_group" {
  default = [ "sg-0b92db49845820fb2" ]
}

variable "component" {
  default = {
    frontend = {
      name = "frontend"
      instant_type = "t2.micro"
    }
    cart = {
      name = "cart"
      instant_type = "t2.micro"
    }
    mongodb = {
      name = "mongodb"
      instant_type = "t2.micro"
    }

  }
}