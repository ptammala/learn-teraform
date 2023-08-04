
variable "fruits" {
  default = [ "Apple", "Banana"]
}

output "fruits"{
  value= var.fruits
}

output "fruits_first"{
  value= var.fruits[0]
}

output "fruits_Second"{
  value= var.fruits[1]
}

variable "fruits_with_stock" {
  default = {
    apple=100
    banana=200
  }
}

output "fruits_with_stock"{
  value= var.fruits_with_stock["apple"]
}


