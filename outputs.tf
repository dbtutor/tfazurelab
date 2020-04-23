// Main Output Block
// Syntax - module.<MODULE_NAME>.<OUTPUT_NAME>

output "azurerm_resource_group" {
    value = module.resource_group.azurerm_resource_group
    description = "Azure Resource Group Output"
}

output "azurerm_storage_account" {
    value  = module.resource_group.azurerm_storage_account
    description = "Azure Storage Account Output"
}

output "azurerm_app_service" {
    value  = module.app_service.azurerm_app_service.*.default_site_hostname
    description = "Azure App Service Output"
}
