module "name" {
    source = "../Day-8-Modules"
    ami_id =var.ami_id
    instance_name = var.instance_name
    instance_type = var.instance_type
}