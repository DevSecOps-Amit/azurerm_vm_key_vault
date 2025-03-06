data "azurerm_subnet" "subnet" {
  name = "AzureBastionSubnet"
  virtual_network_name = "tcs-vnet"
  resource_group_name = "rg-dev-tcs"
  
}

resource "azurerm_public_ip" "tcspip" {
  name                = "examplepip"
  location            = "centralindia"
  resource_group_name =  "rg-dev-tcs"
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "bastionhost" {
  name                = "tcsbastion"
  location            = "centralindia"
  resource_group_name =  "rg-dev-tcs"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet.id
    public_ip_address_id = azurerm_public_ip.tcspip.id
  }
}