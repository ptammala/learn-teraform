data "aws_ami_ids" "ami" {
  owners = ["973714476881"]
}

output "aws_ami_ids"{
  value=data.aws_ami_ids.ami

}