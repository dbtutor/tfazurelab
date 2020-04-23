// Main.tf Block - 
// Calling All the modules

module "resource_group" {
  source = "./modules/resource_group"
}

module "app_service" {
  source = "./modules/app_service"
}
