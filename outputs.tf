output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

# output "demo_output_eip_public_ip" {
#   value       = aws_eip.my_eip.public_ip
# }

output "security_group_name" {
  description = "security_group_name of SG"
  value       = aws_security_group.SG_terraform.name
}
output "security_group_get_vpc_ID" {
  description = "security_group_VPC_ID of SG"
  value       = aws_security_group.SG_terraform.vpc_id
}