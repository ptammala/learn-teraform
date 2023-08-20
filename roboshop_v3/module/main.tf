
resource "aws_instance" "instance" {
  ami                        = data.aws_ami.ami.id
  instance_type              = var.instance_type
  vpc_security_group_ids     = var.security_group
}


resource "aws_route53_record" "record" {
  zone_id                    = "Z06631553SNW6N7HBTCKR"
  name                       = "${var.name}.pdevopst74.online"
  type                       = "A"
  ttl                        = 30
  records                    = [aws_instance.instance.private_ip]
}

