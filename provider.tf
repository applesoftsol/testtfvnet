provider "azurerm" {
  features {}
  subscription_id = "48c7cd04-2b44-4873-b5aa-25b49bd06b94"
  client_id       = "3bdd3137-525d-412a-b875-c4362a6a0810"
  client_secret   = "hHI7Q~FX_Jrnbu1QKyOguCjExUDjY.gHIkyst"
  tenant_id       = "1b478c1a-de95-4cca-b620-81b2773ddff3"
}

terraform {
  backend "azurerm" {
    storage_account_name = "sareoiufdgkdfk"
    container_name       = "container1"
    key                  = "terraform.tfstate"
    access_key = "bZUtdnp5pYJv4DZL6EIX8nDDh8NLipX9yFovr8S9NgqFgYMajAMzrkTtTuSc1mnnTLF2jKtPlxsM+AStpOpi4g=="
  }
}
