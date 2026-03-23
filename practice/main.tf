module "myapp"{
    source = "./aws_infra"
    my-env = "prod"
    instance-type = "t3.micro"
    ami-id = "ami-0f5fcdfbd140e4ab7"
    instance-count = 3
}
module "madinas-devmodule" {
    source = "./aws_infra"
    my-env = "dev"
    instance-type = "t3.micro"
    ami-id = "ami-0f5fcdfbd140e4ab7"
    instance-count = 1

}
module "madinas-stgmodule" {
    source = "./aws_infra"
    my-env = "prod"
    instance-type = "t3.micro"
    ami-id = "ami-0f5fcdfbd140e4ab7"
    instance-count = 2

}
module "madinas-prodmodule" {
    source = "./aws_infra"
    my-env = "staging"
    instance-type = "t3.large"
    ami-id = "ami-0f5fcdfbd140e4ab7"
    instance-count = 3


}