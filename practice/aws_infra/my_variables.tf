variable "my-env" {
  description = "The environment for the deployment (e.g., dev, staging, prod)"
  type        = string
  
}
variable "ami-id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
}
variable "instance-type" {
  description = "The type of EC2 instance to use"
  type        = string

}
variable "instance-count" {
  description = "Number of EC2 instances to launch"
  type        = number
}