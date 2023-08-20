module "components"{
  for_each          = var.component

  source            = "./module"
  zone_id           = var.zone_id
  security_group    = var.security_group
  name              = each.value["name"]
  instant_type      = each.value["instant_type"]

}

