resource "aws_vpc" "vpc-03" {
    cidr_block = var.cidr_block
    tags = {
      "Name" = "vpc-04"
    }
}

resource "aws_subnet" "pub-02" {
    cidr_block = var.sub-01
    tags = {
      "Name" = "subnet-01"
    }
    vpc_id = aws_vpc.vpc-04.id
}
