resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 2
  identifier         = var.cluster_identifier
  cluster_identifier = var.cluster_identifier
  instance_class     = var.instance_class
  engine             = var.engine
  engine_version     = var.engine_version
}


resource "aws_rds_cluster" "default" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  availability_zones      = var.availability_zones
  database_name           = var.database_name
  master_username         = var.master_username
  master_password         = var.master_password
# backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  skip_final_snapshot  = true
  db_subnet_group_name   = aws_db_subnet_group.db.name 
}

