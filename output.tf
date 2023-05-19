output "vpc_id" {
  value = data.aws_vpc.main.id
}

# output "subnet_cidr_blocks" {
#   #value = [for s in data.aws_subnets.subnets : s.ids]
#   value = data.aws_subnets.subnets.ids
# }

# output "ec2_instance" {
#   value = aws_instance.ec2_instance
# }

# output "iam_role" {
#   value = aws_iam_role.MySSMRole
# }
