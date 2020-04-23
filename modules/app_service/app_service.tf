variable "webapplocs" {
	type 	= list
	default = [ "eastus", "westus" ]
}

locals {
    webappsperloc   = 3
}

resource "random_string" "webapprnd" {
  length  = 8
  lower   = true
  number  = true
  upper   = false
  special = false
}

resource "azurerm_app_service_plan" "free" {
    count               =  length(var.webapplocs)
    name                = "plan-free-${var.webapplocs[count.index]}"
    location            =  var.webapplocs[count.index]
    resource_group_name = "CloudAgileDevOps"

    kind                = "Linux"
    reserved            = true
    sku {
        tier = "Free"
        size = "F1"
    }
}

resource "azurerm_app_service" "citadel" {
    count               =  length(var.webapplocs) * local.webappsperloc
    name                =  format("webapp-%s-%02d-%s", random_string.webapprnd.result, count.index + 1, element(var.webapplocs, count.index))
    location            =  element(var.webapplocs, count.index)
    resource_group_name = "CloudAgileDevOps"

    app_service_plan_id =  element(azurerm_app_service_plan.free.*.id, count.index)
}

output "azurerm_app_service" {
  value = azurerm_app_service.citadel
}
