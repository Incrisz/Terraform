resource "aws_elasticache_cluster" "Design1_redis" {
  cluster_id           = "my-redis-cluster-mode-enabled"
  engine               = "redis"
  engine_version       = "7.1"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1 # Cluster mode requires more than one node
  parameter_group_name = "default.redis7"
  port                 = 6379

  # Optionally, specify a subnet group and security groups
#   subnet_group_name    = aws_db_subnet_group.Design1_db_subnet_group.name
#   security_group_ids   = [aws_security_group.sg_Design1.id]

  tags = {
    Name = "Design1-redis"
    # Environment = "production"
  }


}
