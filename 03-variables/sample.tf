variable "fruits" {
  default = [ "Apple", Banana]

}

output "fruits names are "{
  value= fruits[0]
}

