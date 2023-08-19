variable "fruits"{

  default= ["apple","banana"]
}

output "fruits"{
  value = element(fruits,10 )
}