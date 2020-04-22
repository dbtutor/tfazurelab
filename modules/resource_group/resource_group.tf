variable "rg" {
    default = "DevOpsCloudAgile"
}

variable "loc" {
    default = "East US"
}

variable "tags" {
    type = map(string)
    default = {
        environment = "training"
        source      = "citadel"
    }
}

resource "azurerm_resource_group" "lab1" {
  name     = var.rg
  location = var.location
  tags = var.tags
}

resource "azurerm_storage_account" "lab1sa" {
  name                      = "devopscloudagilelabs"
  resource_group_name       =  azurerm_resource_group.lab1.name
  location                  =  azurerm_resource_group.lab1.location

  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  access_tier               = "Cool"
}

output "azurerm_resource_group" {
  value = azurerm_resource_group.lab1
}

output "azurerm_storage_account" {
  value = azurerm_resource_group.lab1sa
}
