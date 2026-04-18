resource "aws_instance" "terraform" {
    count =4
    ami             = "ami-0220d79f3f480ecf5"
    instance_type   = "t3.micro"
    vpc_security_group_ids =[aws_security_group.allow_ALLs.id]
    tags = {
        Name = var.instances[count.index]
        terraform = true    
    }
}
resource "aws_security_group" "allow_ALLs" {
  name = "allow_ALLs"
  egress {
    from_port        = 0 # from port 0 to 0 means all ports allowing
    to_port          = 0
    protocol         = "-1" # all protocall
    cidr_blocks      = ["0.0.0.0/0"] # internet
   
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
  tags ={
    name ="allow_ALLs"
  }
}