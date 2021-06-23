# terraform-aws-rds_cluster
 ## Please use below code

```
 module "rds_cluster" {
  source  = "osmdilya/rds-cluster/aws"

  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.07.2"
  availability_zones      = ["us-east-2a", "us-east-2b", "us-east-2c"]
  database_name           = "db"
  master_username         = "foo"
  master_password         = "MYPROJECT"
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot  = true
  region = "us-east-2" 
  subnet_ids = ["subnet-05d8f5c18eb5835cc","subnet-0c318d56b15a0b068","subnet-072d5daecb76219cc"]
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 2
  identifier         = "aurora-cluster-demo-${count.index}"
  cluster_identifier = aws_rds_cluster.default.id
  instance_class     = "db.r4.large"
  engine             = aws_rds_cluster.default.engine
  engine_version     = aws_rds_cluster.default.engine_version
}

```
