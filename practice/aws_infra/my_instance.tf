resource "aws_instance" "madinas-instance"{
    count = var.instance-count
    ami = var.ami-id
    instance_type = var.instance-type
    
    tags ={
        Name = "${var.my-env}-terra-instance"
    }
}