resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z06631553SNW6N7HBTCKR"
  name    = "frontend.pdevopst74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "mongodb"
  }
}


resource "aws_route53_record" "frontend" {
  zone_id = "Z06631553SNW6N7HBTCKR"
  name    = "mongodb.pdevopst74.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "catalogue"
  }
}


resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "cart"
  }
}


resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "user"
  }
}



resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "rabbitmq"
  }
}


resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0b92db49845820fb2" ]
  tags = {
    Name = "payment"
  }
}





