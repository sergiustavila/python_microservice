output "key_name" {
  value = aws_key_pair.ec2_key_pair.key_name
}

output "private_key" {
  value     = tls_private_key.ec2_key.private_key_openssh
  sensitive = true
}