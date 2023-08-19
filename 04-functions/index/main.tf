variable "colors" {

  default = ["Red","Blue","Green","Black" ]
}

output "Color" {
  value = index(var.colors,"Black" )
}