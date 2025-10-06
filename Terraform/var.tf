variable "prefix" {
  type    = string
  default = "devops"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "resource_group_name" {
  type    = string
  default = "devops"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "node_vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "node_count" {
  type    = number
  default = 2
}
