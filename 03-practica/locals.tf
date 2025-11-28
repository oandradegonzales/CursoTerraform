locals {
  common_tags = {
    project_name = var.project_name
    enviroment   = var.environment
    owner        = "OscarAndrade"
    manage_by    = "Terraform"
  }
  prefix = "${var.project_name}-${var.environment}-${local.common_tags.owner}"
  #nombre="Nombre"
  #apellido="Apellido"
  #nombre_nombre="${local.nombre}-${local.apellido}"
  #lugar_uso="${var.enviroment}-${var.location}"
}


