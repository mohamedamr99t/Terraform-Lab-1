resource "tls_private_key" "my_key_pair" {
  algorithm = "RSA"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer"
  public_key = tls_private_key.my_key_pair.public_key_openssh
}

resource "local_sensitive_file" "private_key" {
    content  = tls_private_key.my_key_pair.private_key_pem
    filename = "private_key.pem"
    file_permission = "0600"
}