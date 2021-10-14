# Outputs file
output "INFRA_VPC" {
  value = aws_vpc.SonyLiv_Terraform_Dev.id
}
output "INFRA_Subnet" {
  value = aws_subnet.SonyLiv_Terraform_Dev.id
}
