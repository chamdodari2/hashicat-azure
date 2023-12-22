resource "azurerm_resource_group" "example" {
  name     = "test"
  location = "West Europe"
}

module "network" {
  source  = "app.terraform.io/hashicorp-chip-org/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name = "test"
}