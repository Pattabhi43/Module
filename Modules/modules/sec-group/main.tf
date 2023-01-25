resource "aws_security_group" "sg02" {
    name = "sg02"
    vpc_id = var.vpc_id

    ingress {

        from_port = 22
        to_port = 22
        description = ""
        protocol = "tcp"
        cidr_blocks = [ "10.0.0.0/24" ]
    }
    egress {

        from_port = 0
        to_port = 0
        description = ""
        protocol = -1
        cidr_blocks = [ "10.0.0.0/24" ]
    }

    tags = {
      "Name" = "sg-01"
    }
}
