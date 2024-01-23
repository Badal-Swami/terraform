virtul_machine = {
  "vm1" = {
    "rg_name"          = "vm_rg"
    "location"         = "eastus"
    "vnet_name"        = "linux-vnet"
    "subnet_name"      = "linux-subnet"
    "address_space"    = ["10.0.0.0/16"]
    "address_prefixes" = ["10.0.2.0/24"]
    "nic_name"         = "linux-nic"
    "vm_name"          = "linux-vm"
    "user_name"        = "adminuser"
    "password"         = "admin@123456"
    "publish"          = "Canonical"
    "offer"            = "0001-com-ubuntu-server-jammy"
    "sku"              = "22_04-lts"
  },

  "vm2" = {
    "rg_name"          = "vm_rg"
    "location"         = "eastus"
    "vnet_name"        = "linux-vnet"
    "subnet_name"      = "linux-subnet1"
    "address_space"    = ["10.0.0.0/16"]
    "address_prefixes" = ["10.0.2.0/24"]
    "nic_name"         = "linux-nic1"
    "vm_name"          = "linux-vm2"
    "user_name"        = "adminuser"
    "password"         = "admin@123456"
    "publish"          = "Canonical"
    "offer"            = "0001-com-ubuntu-server-jammy"
    "sku"              = "22_04-lts"
  }
}