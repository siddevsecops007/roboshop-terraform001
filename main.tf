module "ec2" {
  for_each          = var.instances
  source            = "./modules/ec2"
  env               = var.env
  component_name    = each.key
  app_port          = each.value["app_port"]
  instance_type     = each.value["instance_type"]
}
