variable "ami" {}
variable "availability_zone" {}
variable "count" {
  default = 1
}
variable "env" {
  default = "unknown"
}
variable "iam_instance_profile" {}
variable "instance_type" {}
variable "key_name" {}
variable "name" {}
variable "provisioner" {}
variable "region" {}
variable "role" {}
variable "security_groups" {}
variable "source_dest_check" {
  default = true
}
variable "subnet_id" {}
