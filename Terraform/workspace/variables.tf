variable "project" {
    default = "RoboShop"
}

variable "environment" {
    type = map
    default = {
        dev = "dev"
        prod = "prod"
    }
}

variable "ami_id"{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type"{
    type = map
    default = {
        dev = "t3.micro"
        prod = "t3.micro"
    }
}

variable "sg_name"{
    type = string
    default = "allow_ALLs"
    description = "Security group name to attach to ec2 instance" #Optional  to inform what is this variabel about

 }

 variable "cidr"{
    type = list
    default = ["0.0.0.0/0"]
 }

variable "ingress_from_port"{
    type = number
    default = 0
}
variable "ingress_to_port"{
    type = number
    default = 0
}

variable "egress_from_port"{
    type = number
    default = 0
}
variable "egress_to_port"{
    type = number
    default = 0
}
variable "protocol"{
    type = string
    default = "-1"
}