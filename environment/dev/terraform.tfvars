rg_map = {
  rg1 = {
    name     = "rg-dev-tcs"
    location = "centralindia"
  }
  rg1 = {
    name     = "rg-dev-tcs"
    location = "centralindia"
  }
}

storage_map = {
  storage1 = {
    name                     = "tcsnewstorageacc"
    location                 = "centralindia"
    resource_group_name      = "rg-dev-tcs"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet_map = {
  vnet1 = {
    name                = "tcs-vnet"
    location            = "centralindia"
    resource_group_name = "rg-dev-tcs"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
  
}

subnet_map = {
  subnet1 = {
    name                 = "tcs-subnet1"
    resource_group_name  = "rg-dev-tcs"
    virtual_network_name = "tcs-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "tcs-subnet2"
    resource_group_name  = "rg-dev-tcs"
    virtual_network_name = "tcs-vnet"
    address_prefixes     = ["10.0.2.0/24"]

  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-dev-tcs"
    virtual_network_name = "tcs-vnet"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

vms = {
  vm1 = {
    subnet_name          = "tcs-subnet1"
    virtual_network_name = "tcs-vnet"
    resource_group_name  = "rg-dev-tcs"
    nic_name             = "tcs-nic"
    location             = "centralindia"
    vm_name              = "tcs-vm1"
    size                 = "Standard_F2"
  }
  vm2 = {
    subnet_name          = "tcs-subnet1"
    virtual_network_name = "tcs-vnet"
    resource_group_name  = "rg-dev-tcs"
    nic_name             = "tcs-nic2"
    location             = "centralindia"
    vm_name              = "tcs-vm2"
    size                 = "Standard_F2"

  }
}

azurerm_key_vault = {
  kv1 = {
    name                = "examplekeyvault"
    location            = "centralindia"
    resource_group_name = "rg-dev-tcs"

  }
}