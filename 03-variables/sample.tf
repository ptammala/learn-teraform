
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


variable "fruits_stock_with_prices" {
  default = {
    apple= {
      stock=200
      price=5
    }
    banana = {
      stock = 300
      price = 10
    }
  }
}

variable "fruit_details" {
  default = {
    apple=100
    type="washington"
    for_sale=true
    price=10}
}

output "fruitdetailsD"{
  value="${var.fruit_details["apple"]} , ${var.fruit_details["type"]}"

}



output "fruits_stock_with_prices" {
  value = var.fruits_stock_with_prices["apple"].stock
#  value = var.fruits_stock_with_prices["apple"].price
}
output "fruits_stock_with_prices1" {
    value = var.fruits_stock_with_prices["apple"].price
}

output "fruits_stock_with_prices2" {
  value = "Apple Stock=${var.fruits_stock_with_prices["apple"].stock}"
  #  value = var.fruits_stock_with_prices["apple"].price
}