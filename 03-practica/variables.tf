
variable "location" {
  description = "Ubicacion de los recursos"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos de la vNet"
  type        = string
  default     = "terraform-rg-oscar"
}

variable "vnet_name" {
  description = "Nombre del grupo de recursos de la vNet"
  type        = string
  default     = "terraform-vnet-oscar"
}

variable "vnet_addres_space" {
  description = "Nombre del grupo de recursos de la vNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}





