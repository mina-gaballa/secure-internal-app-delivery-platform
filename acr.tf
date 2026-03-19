resource "azurerm_container_registry" "acr" {
  name                = "minaaksacr20260319"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = false

  tags = {
    environment = "lab"
    managedBy   = "terraform"
    project     = "aks-terraform-arc"
  }
}
