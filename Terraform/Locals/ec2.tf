resource "aws_instance" "terraform" {
    ami             = local.AMI_ID
    instance_type   = local.instance_type
    vpc_security_group_ids =[aws_security_group.allow_ALLs.id]
    tags = local.EC_Tags
}
resource "aws_security_group" "allow_ALLs" {
  name = "${local.common_name}-Allow_ALL"
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
  tags = merge(
    var.ec2_tags,
    {
      Name = "${local.common_name}-Allow_ALL"
    }
  )
}