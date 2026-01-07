resource "aws_instance" "example" {
  ami           = var.jimmy-ami
  instance_type = var.vm-size

  tags = {
    Name = var.vm-name
  }
}
