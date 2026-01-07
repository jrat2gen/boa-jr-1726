output "Day2VM1publicIP" {
    value = aws_instance.example.public_ip
}
output "Day2VM1ID" {
  value = aws_instance.example.id
}

