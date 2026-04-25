module "catalogue" { #
    source = "../module_aws_instance"
    ami_id = var.ami_id
    instance_type = var.instance_type
    SG_ID = var.SG_ID
    tags = var.tags
}

output "pub_ip" {
    value = module.catalogue.public_ip
}

output "pri_ip" {
    value = module.catalogue.private_ip
}

output "inst_id" {
    value = module.catalogue.instance_id
}

