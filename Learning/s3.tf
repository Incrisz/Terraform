resource "aws_s3_bucket" "my_bucket" {
  provider = aws.east-2
  bucket = "inc-kisser"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# resource "aws_s3_bucket_acl" "my_bucket_acl" {
#   bucket = aws_s3_bucket.my_bucket.id
#   acl    = "public-read-write"
# }
