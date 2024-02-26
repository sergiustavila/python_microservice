output "instance_id_master" {
  value = aws_instance.aws_ec2_master.id
}

output "instance_id_worker" {
  value = aws_instance.aws_ec2_worker.id
}