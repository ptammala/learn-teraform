variable "test" {
  default = {a="ay", b="bee"}
}

output "test" {
  value = lookup(var.test,"a","Prakash" )
}


output "test1" {
  value = lookup(var.test,"Z","Prakash" )
}

output "Concat" {
  value = concat(["Vaisnika", "Vedhanshi"], ["Prakash","Navaneetha"],["Babu","Devavva"],["Anasuja","Tammala"])
}