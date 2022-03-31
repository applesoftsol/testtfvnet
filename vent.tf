
resource "azurerm_resource_group" "example" {
  name     = "tf_rg2"
  location = "West Europe"
  tags = {
	env="dev"
	createdby="applesoftsol"
}
}
resource "azurerm_virtual_network" "example" {
  name                = "vnet1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["11.0.0.0/16"]
  dns_servers         = ["11.0.0.4", "11.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "11.0.1.0/24"
  }
}
