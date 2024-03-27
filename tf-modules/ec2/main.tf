resource "aws_instance" "aws_ec2_master" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "PythonChatBot-Master"
  }
}

resource "aws_instance" "aws_ec2_worker" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "PythonChatBot-Worker"
  }
}