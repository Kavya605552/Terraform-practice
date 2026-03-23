resource "aws_s3_bucket" "madinas-bucket"{
bucket = "${var.my-env}-kavya155-bucket"
tags={
  Name = "${var.my-env}-kavya155-bucket"
  environment = var.my-env
  
 }
}