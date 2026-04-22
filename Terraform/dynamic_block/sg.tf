resource "aws_security_group" "Roboshop_instance" {
  name = "roboshop_strict_SG"
  egress {
    from_port        = 0 # from port 0 to 0 means all ports allowing
    to_port          = 0
    protocol         = "-1" # all protocall
    cidr_blocks      = ["0.0.0.0/0"] # internet
   
  }
  dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content {
        from_port        = ingress.value
        to_port          = ingress.value
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    
   
  }
  tags ={
    name ="roboshop_strict_SG"
  }
}