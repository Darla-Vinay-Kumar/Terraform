variable "AMI_ID" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "INSTANCE_TYPE" {
    type = string
    default = "dev"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "Testing"
        terraform = "true"
        Project = "ROBOSHOP"
    }
}

variable "SG_Name" {
    type = string
    description = "Security group name"
    default = "MYSG"

}

variable "CIDR" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "PROTOCOL" {
    default = "-1" # means all protocols
}

variable "INSTANCES" {
    default = ["mongodb", "mysql", "redis"]
        
   
}

variable "zone_id" {
    default = "Z018042118DWYK39M0YVT"
}

variable "DomainName" {
    default = "darlavinaykumar.fun"
}