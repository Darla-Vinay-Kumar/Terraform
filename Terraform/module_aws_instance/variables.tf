variable "ami_id" {
    type = string
    description = "this is the ami used for the ec2 instance"
}

variable "instance_type" {
    type = string
    description = "This is the instance type used for the EC2 instance"
    validation {
        condition = contains(["t3.micro","t3.small","t3.medium"],var.instance_type)
        error_message = "Please select either t3.micro or small or medium"
    }
}

variable "SG_ID" {
    type = list
}

variable "tags" {
    type = map
    default = {}
}