variable "components"{
  default = { forntend = { name = "frontend"}
    mongodb = { name = "mongodb"} }
}

resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name        = lookup(var.components,each.value["name"],null )
}