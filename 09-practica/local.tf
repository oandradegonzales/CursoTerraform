locals {
  common_tags = {
    project_name = var.project_name
    environment  = var.environment
    owner        = "OscarAndrade"
    manage_by    = "Terraform"
  }
  prefix = "${local.common_tags.owner}-${var.environment}"

}