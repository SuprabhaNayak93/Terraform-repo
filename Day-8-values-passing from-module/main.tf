module "name" {
    source = "../Day-8-Modules"
    ami_id ="ami-01edba92f9036f76e"
    instance_type = "t2.micro"
    instance_name = "EC2_server"
}