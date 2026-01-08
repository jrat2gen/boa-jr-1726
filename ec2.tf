resource "aws_instance" "example" {
  ami           = var.jimmy-ami
  instance_type = var.vm-size
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  count = var.numberofVMs

  tags = {
    Name = "${var.vm-name}-${count.index}"
  }
}
