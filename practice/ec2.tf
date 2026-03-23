resource "aws_key_pair" "madinas-key"{
    key_name = "terra-key"
    public_key = file("C:/Users/rajes/Documents/practice/terra-key.pub")

}
resource "aws_default_vpc" "madinas-vpc"{
    tags ={
        name ="terra-vpc"
    }

}
resource "aws_security_group" "madinas-sg"{
    name = "terra-sg"
    description = "security group for terra"
    vpc_id = aws_default_vpc.madinas-vpc.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_instance" "madinas-instance"{
    ami = "ami-0f5fcdfbd140e4ab7"
    instance_type = "t3.micro"
    key_name = aws_key_pair.madinas-key.key_name
    security_groups = [aws_security_group.madinas-sg.name]

    tags ={
        Name = "terra-instance"
    }
}