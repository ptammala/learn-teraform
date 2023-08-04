variable "fruits" {
  default = [ "Apple", "Banana"]

}

output "fruits"{
  value= var.fruits
}

