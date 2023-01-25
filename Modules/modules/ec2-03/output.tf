output "pub-ip" {
    value = aws_instance.ec2-03.public_ip
}

output "pvt-ip" {
    value = aws_instance.ec2-03.private_ip
}
