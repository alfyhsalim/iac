variable "prefix" {
  description = "This prefix will be included in the name of most resources."
}

variable "ACCESS_KEY" {
  description = "AWS access key credentials."
}

variable "SECRET_KEY" {
  description = "AWS secret key credentials"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "ap-southeast-1"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}
