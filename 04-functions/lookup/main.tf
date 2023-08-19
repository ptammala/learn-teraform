variable "test" {
  default = {a="ay", b="bee"}
}

output "test" {
  value = lookup(var.test,"a","Prakash" )
}


output "test1" {
  value = lookup(var.test,"Z","Prakash" )
}