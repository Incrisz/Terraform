# to create keypair
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "example" {
  key_name   = "terraform"
  public_key = tls_private_key.example.public_key_openssh
}

resource "local_sensitive_file" "private_key" {
  content = tls_private_key.example.private_key_pem
  filename          = "${path.module}/terraform.pem"
  file_permission   = "0600"
}
