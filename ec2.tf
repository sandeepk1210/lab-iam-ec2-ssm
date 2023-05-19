#Get Amazon Linux 2 AMI
data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
}

resource "aws_instance" "ec2_instance" {
  #Configure AMI as Amazon Linux 2
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = "t3a.small"
  #key_name             = "web-server-key"
  associate_public_ip_address = true
  availability_zone           = data.aws_availability_zones.availability_zones.names[0]
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  iam_instance_profile        = aws_iam_role.MySSMRole.name
  subnet_id                   = data.aws_subnets.subnets.ids[0]

  tags = {
    Name = "MySSMInstance"
  }
}
