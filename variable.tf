variable "cluster_identifier" {}
variable "engine" {}
variable "engine_version" {}
variable "availability_zones" {

  type = list(string)
}
variable "database_name" {}
variable "master_username" {}
variable "master_password" {}
#  variable "backup_retention_period"{}
variable "preferred_backup_window" {}
variable "skip_final_snapshot" {}
variable "region" {}
variable "instance_class" {}
variable "subnet_ids" {
  type = list(any)
}
 