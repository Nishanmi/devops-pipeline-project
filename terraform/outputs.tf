output "master_public_ip" {
  value = aws_instance.kube-master.public_ip
}

output "slave1_public_ip" {
  value = aws_instance.kube-slave1.public_ip
}

output "slave2_public_ip" {
  value = aws_instance.kube-slave2.public_ip
}

