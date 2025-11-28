variable "rg_name"{
  description = "Nombre del grupo de recursos"
  type = string
  default = "Recursos_oAndrade"
}
variable "vnetName"{
  description = "Nombre del grupo de recursos de la vNet"
  type = string
  default = "vNet_oAndrade"
}

variable "location" {
  description = "Ubicacion de los recursos"
  type = string
  default = "East US"
}
variable "segmentoVNet" {
  description = "Segmento principal de la vnet"
  type = list(string)
  default = ["10.0.0.0/16"]
}
variable "subnetName"{
  description = "Nombre del grupo de recursos de la subNet"
  type = string
  default = "subnet_Andrade"
}
variable "subnetNameTwo"{
  description = "Nombre del grupo de recursos de la subNet"
  type = string
  default = "subnet_Andrade_Two"
}
variable "segmentoSubNets" {
  description = "Segmento principal de las subnets"
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}
variable "subNet_names" {
  description = "nombres de las subnets"
  type = list(string)
  default = ["subnet_one","subnet_two","subnet_three"]
}
variable "objeto" {
  description = "objeto"
  type = object({
    name = string
    city= string
    age= number
    languaje= list(string)
    contact=map(string)
  })
  default = {
    name = "Oscar"
    city = "Bolivia"
    age = 30
    contact = {
      "email" = "oandradeg@gmail.com"
    }
    languaje = [ "espñol", "ingles" ]
  }
}
variable "securityName"{
  description = "Nombre la seguridad de la red"
  type = string
  default = "security_group_andrade"
}
variable "securityRule"{
  description = "Nombre la seguridad de la red"
  type = object({
    name = string
    priority=number
    direction=string
    access=string
    protocol=string
    all=string
  })
  default = {
    name = "oAndradeRule"
    access = "Allow"
    priority=199
    direction="Inbound"
    protocol="Tcp"
    all="*"
  }

}