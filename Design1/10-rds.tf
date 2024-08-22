resource "aws_db_instance" "Design1_rds" {
  allocated_storage       = 20
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "8.0.35"
  instance_class          = "db.t3.micro"
  db_name                 = "easelow"
  username                = "root"
  password                = "1ncrease"
  parameter_group_name    = "default.mysql8.0"
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.sg_Design1.id]
  db_subnet_group_name    = aws_db_subnet_group.Design1_db_subnet_group.name
  tags = {
    Name        = "Design1RDSInstance"
    Environment = "Dev"
  }
  backup_retention_period = 7

  # Updated Backup window to not overlap with maintenance window
  backup_window           = "03:00-06:00"

  # Updated Maintenance window to a different time
  maintenance_window      = "Sat:07:00-Sat:09:00"
}
