
resource "azurerm_resource_group" "example" {
  name     = "tf_rg1"
  location = "West Europe"
  tags = {
	env="dev"
	createdby="applesoftsol"
}
}
resource "azurerm_virtual_network" "example" {
  name                = "vnet1"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  tags = {
    environment = "dev"
  }
}