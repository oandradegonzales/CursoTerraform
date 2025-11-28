#comandos utiles
#terraform state list #listar los recu que se encuentran en el estado
#terraform state show azurerm_resource_group.terraform-rg # detalle de un recurso espceifico

#terraform state taint azurerm_resource_group.terraform-rg # recosntruir un recurso
#terraform state untaint azurerm_resource_group.terraform-rg # desmarcar el recreado
#rrcecrea un rec especifico
#terraform import 
# terraform import <rec declarado> <id del recurso>

resource "azurerm_resource_group" "terraform_rg" {
  name     = "oscar-rg"
  location = "eastus"

}
/*
resource "azurerm_virtual_network" "manual-vnet" {
  name                = "oscar-vnet"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.terraform-rg.name
  address_space       = ["10.0.0.0/16"]
  tags = {
    Owner = "Oscar"
  }
}
*/
# module "vnet" {
#   source  = "Azure/vnet/azurerm"
#   version = "5.0.1"
#   # insert the 2 required variables here
#   resource_group_name = azurerm_resource_group.terraform_rg.name
#   vnet_location = var.location
#   subnet_names = ["subnetOne","subnetTwo","subnetThree"]
#   subnet_prefixes = [ "10.0.11.0/24", "10.0.22.0/24", "10.0.33.0/24" ]
#   vnet_name = "rAruzamen-vnet"
# }
# module "github-vnet" {
#   source  = "github.com/Saelthas/terraform"

#   # insert the 2 required variables here
#   resource_group_name = azurerm_resource_group.terraform_rg.name
#   vnet_location = var.location
#   subnet_names = ["subnetOne","subnetTwo"]
#   subnet_prefixes = [ "10.0.11.0/24", "10.0.22.0/24"]
#   vnet_name = "rAruzamen-git-vnet"
# }