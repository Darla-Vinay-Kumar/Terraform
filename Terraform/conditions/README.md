# Terraform Conditions

This folder contains examples of Terraform conditional expressions.

Terraform conditions help us make decisions in code.

We can create dynamic infrastructure based on values.

--------------------------------------------------

What is Condition in Terraform?

Condition means:

IF something is true → do one thing  
ELSE → do another thing

Syntax:

condition ? true_value : false_value

--------------------------------------------------

Example 1 - Instance type based on environment

variable "environment" {
  default = "dev"
}

resource "aws_instance" "example" {

  ami = "ami-0220d79f3f480ecf5"

  instance_type = var.environment == "prod" ? "t3.large" : "t3.micro"

}

Explanation:

If environment = prod → instance type = t3.large  
Else → instance type = t3.micro

--------------------------------------------------

Example 2 - Create resource only if condition is true

variable "create_instance" {
  default = true
}

resource "aws_instance" "example" {

  count = var.create_instance ? 1 : 0

  ami = "ami-0220d79f3f480ecf5"

  instance_type = "t3.micro"

}

Explanation:

If create_instance = true → instance created  
If create_instance = false → instance not created

--------------------------------------------------

Example 3 - Conditional tags

tags = {
  Name = var.environment == "prod" ? "Production Server" : "Dev Server"
}

Explanation:

Tag name changes based on environment.

--------------------------------------------------

Why we use Conditions

Conditions are useful when:

- different environments (dev, test, prod)
- optional resource creation
- selecting instance size
- dynamic configuration
- reusable code

--------------------------------------------------

Commands to run Terraform

terraform init

terraform plan

terraform apply

terraform destroy

--------------------------------------------------

Key Concept

condition ? true_value : false_value

Example:

env == prod ? big server : small server

--------------------------------------------------

Author

Vinay Kumar

Learning DevOps and Terraform
