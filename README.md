# terraform-aws_instance-module

This module is used for management of AWS EC2 instances using Terraform.

## Resources

* EC2 instance

## Argument Reference

* `ami` - (Required) Which AMI to use.
* `availability_zone` - (Required) Which AZ to use.
* `count` - (Optional) Number of instances to manage. Default is 1.
* `env` - (Optional) The instance's environment (prod, dev, etc.). Default is unknown.
* `iam_instance_profile` - (Required) IAM instance profile.
* `instance_type` - (Required) EC2 instance type.
* `key_name` - (Required) SSH key name.
* `name` - (Required) VPC name.
* `region` - (Required) VPC region.
* `role` - (Required) The instance's role.
* `security_groups` - (Required) Assigned security groups.
* `source_dest_check` - (Optional) Allow traffic to be routed through the instance. Default is true, which *prevents* this.
* `subnet_id` - (Required) The subnet ID for this instance.

## Attribute Reference

* `id` - The instance's ID.
* `public_ip` - The instance's public IP address.
* `private_ip` - The instance's private IP address.
