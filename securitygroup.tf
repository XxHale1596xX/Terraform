resource "aws_security_group" "teste-sg" {
    nome = "teste-sg-tf"
    description = "SG de testes de tf"
    vpc_id = "${var.vpcid}"

    tags = {
        Name = "SG"
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}