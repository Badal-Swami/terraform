nsg = {
  nsg01 = {
    name                = "acceptanceTestSecurityGroup1"
    location            = "east us"
    resource_group_name = "badal-rg"
  },

  nsg02 = {
    name                = "acceptanceTestSecurityGroup2"
    location            = "east us"
    resource_group_name = "badal-rg"
  }
}

nsgs = {
  rule1 = {
    name                       = "nsgrule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "80"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  },
  rule2 = {
    name                       = "nsgrule2"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "443"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}