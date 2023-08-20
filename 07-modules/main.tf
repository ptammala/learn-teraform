module "test" {
  source = "./local-module"
  instant_type = var.instant_type
}

output "test" {
  value = module.test.ami2
}

variable instant_type {
  default = "t2.micro"
}