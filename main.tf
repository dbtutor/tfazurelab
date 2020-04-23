// Main Block aka Root Module block
// Calling All the modules

module "resource_group" {
  source = "./modules/resource_group"
}

module "app_service" {
  source = "./modules/app_service"
  # Outputs can only be passed from one module into another by way of the root module.
  # https://www.terraform.io/docs/modules/composition.html
  resource_group = module.resource_group.azurerm_resource_group.name
}
