variable "fruits"{

  default= ["apple","banana"]
}

output "fruits"{
  value = element(["a", "b", "c","d"], 7 )
}