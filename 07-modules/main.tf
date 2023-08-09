module "test" {
  source = "./local-module"
}

output "test" {
  value = module.test
}

output "test1" {
  value = module.test.ami_C
}
