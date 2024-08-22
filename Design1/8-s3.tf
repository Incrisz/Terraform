resource "aws_s3_bucket" "Design1_s3" {
  bucket = "design1-storage-incrisz" # Lowercase and uses hyphens instead of underscores

  tags = {
    Name        = "Design1_storage"
    Environment = "Dev"
  }
}
