variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "MY_EC2_Terraform"
}

variable "client_ip" {
  default = "10.60.60.60/32"
}