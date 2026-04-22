resource "aws_instance" "testing" {
    for_each = toset(var.INSTANCES)
    ami = var.AMI_ID
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.MYSG.id]

    tags = {
        Name = each.value
        terraform = true
    }
}

 resource "aws_security_group" "MYSG" {
     name = var.SG_Name
     ingress {
        from_port = var.ingress_from_port
        to_port = var.ingress_to_port
        protocol = var.PROTOCOL 
        cidr_blocks = var.CIDR
     }

     egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = var.PROTOCOL
        cidr_blocks = var.CIDR
     }
     
     tags = {
        Name = "MYSG"
        terraform = true
     }
 }