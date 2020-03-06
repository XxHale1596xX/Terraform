resource "aws_instance" "teste" {
    ami = "ami-0fc20dd1da406780b"
    instance_type = "t2.micro"
    key_name = "barsystem"
    #availability_zone = "${var.aws_region}"

    subnet_id = "${var.subnetid}"
    vpc_security_group_ids = ["${aws_security_group.teste-sg.id}"]

    tags = {
        Name = "teste"
    }
}