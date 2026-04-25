variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    default = "t3.small"
}

variable "SG_ID" {
    default = ["sg-06298c18e86c57b2e"]
}

variable "tags" {
    default = {
        Name = "module-demo"
    }
}