
variable "fruits" {
  default = [ "Apple", "Banana"]
}

output "fruits"{
  value= var.fruits
}

variable "fruits with stock" {
  default = {
    apple=100
    banana=200
  }
}

output "fruits with stock"{
  value= var.fruits["apple"]
}


