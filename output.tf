output "vpc_id" {
  value = data.aws_vpc.main.id
}

# output "subnet_cidr_blocks" {
#   #value = [for s in data.aws_subnets.subnets : s.ids]
#   value = data.aws_subnets.subnets.ids
# }

output "ec2_instance_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "ec2_instance_key_name" {
  value = aws_instance.ec2_instance.key_name
}

output "ec2_instance_ssh" {
  value = "ssh -i ${aws_instance.ec2_instance.key_name} ec2-user@${aws_instance.ec2_instance.public_ip}"
}

# output "iam_role" {
#   value = aws_iam_role.MySSMRole
# }

# output "availability_zones" {
#   value = data.aws_availability_zones.availability_zones
# }

# output "aws_subnets" {
#   value = data.aws_subnets.subnets
# }
