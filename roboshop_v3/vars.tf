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

    catalogue = {
      name = "catalogue"
      instant_type = "t2.micro"
    }
    user = {
      name = "user"
      instant_type = "t2.micro"
    }
    redis = {
      name = "redis"
      instant_type = "t2.micro"
    }
    mysql = {
      name = "mysql"
      instant_type = "t2.micro"
    }
    shipping = {
      name = "shipping"
      instant_type = "t2.micro"
    }
    payment = {
      name = "payment"
      instant_type = "t2.micro"
    }
    rabbitmq = {
      name = "rabbitmq"
      instant_type = "t2.micro"
    }


  }
}