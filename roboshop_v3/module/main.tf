
resource "aws_instance" "instance" {
  ami                        = data.aws_ami.ami.id
  instance_type              = var.instant_type
  vpc_security_group_ids     = var.security_group
  tags                       = {
    Name                     = var.name
  }
}


resource "aws_route53_record" "record" {
  zone_id                    = "Z06631553SNW6N7HBTCKR"
  name                       = "${var.name}.pdevopst74.online"
  type                       = "A"
  ttl                        = 30
  records                    = [aws_instance.instance.private_ip]

}

resource "null_resource" "ansible" {
  depends_on = [ aws_route53_record.record ]
  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/roboshop-ansible
git pull
sleep 15
ansible-playbook -i "${var.name}.pdevopst74.online", main.yml -e ansible_user=centos ansible_password=DevOps321 -e component="${var.name}"
EOF
  }

}

