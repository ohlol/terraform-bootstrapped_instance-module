provider "aws" {
  region = "${var.region}"
}

resource "template_file" "provisioner" {
  template = "${file("${path.module}/templates/provisioner/${var.provisioner}.cfg.tpl")}"

  vars {
    role = "${var.role}"
  }
}
resource "aws_instance" "instance" {
  ami = "${var.ami}"
  availability_zone = "${var.availability_zone}"
  iam_instance_profile = "${var.iam_instance_profile}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = ["${split(",", var.security_groups)}"]
  source_dest_check = "${var.source_dest_check}"
  subnet_id = "${var.subnet_id}"
  user_data = "${template_file.provisioner.rendered}"

  tags = {
    Name = "${var.name}-${format("%03d", count.index+1)}-${var.availability_zone}"
    role = "${var.role}"
    env = "${var.env}"
  }
}
