
resource "aws_instance" "web-1" {
    ami = "ami-0b898040803850657"
    availability_zone = "us-east-1a"
    instance_type = "t2.nano"
    key_name = "terraform"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-1"
        Env = "Prod"
        Owner = "Bharath"
    }
}
resource "aws_instance" "web-2" {
    ami = "ami-0b898040803850657"
    availability_zone = "us-east-1a"
    instance_type = "t2.nano"
    key_name = "terraform"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-2"
        Env = "Prod"
        Owner = "Bharath"
    }
}
terraform {
  backend "s3" {
    bucket = "terranb1"
    key    = "path"
    region = "us-east-1"
  }
}