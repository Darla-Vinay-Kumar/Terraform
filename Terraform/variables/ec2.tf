resource "aws_instance" "terraform" {
    ami             = var.ami_id
    instance_type   = var.instance_type
    vpc_security_group_ids =[aws_security_group.allow_ALLs.id]
    tags =var.ec2_tags
}
resource "aws_security_group" "allow_ALLs" {
  name = var.sg_name
  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr # internet
   
  }
  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
   
  }
  tags ={
    name ="allow_ALLs"
  }
}