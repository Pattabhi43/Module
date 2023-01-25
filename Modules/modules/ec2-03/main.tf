resource "aws_instance" "ec2-03" {
    ami = var.ami
    instance_type = var.instance_type
    availability_zone = "ap-south-1a"
    subnet_id = var.sub-01
    vpc_security_group_ids = [ var.sg02]

    tags = {
      "Name" = "ec2-03"
    }
}