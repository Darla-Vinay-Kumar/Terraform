# Terraform AWS EC2 Instance with Security Group

This project demonstrates how to create an AWS EC2 instance using Terraform along with a security group that allows all inbound and outbound traffic.

---

##  Overview

This Terraform configuration performs the following:

* Creates an EC2 instance
* Creates a security group
* Attaches the security group to the instance
* Uses AWS provider

---

##  Terraform Configuration Explained

### 1. Terraform Block

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.16.0"
    }
  }
}
```

* Defines required provider (AWS)
* Ensures correct provider version is used

---

### 2. Provider Block

```hcl
provider "aws" {
}
```

* Connects Terraform to AWS
* Uses credentials from:

  * AWS CLI (`aws configure`)
  * Environment variables

---

### 3. Security Group

```hcl
resource "aws_security_group" "allow_ALLs" {
  name = "allow_ALLs"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "allow_ALLs"
  }
}
```

###  Explanation

* **Ingress** → Incoming traffic (allowed from anywhere)
* **Egress** → Outgoing traffic (allowed to anywhere)
* `protocol = "-1"` → All protocols
* `0.0.0.0/0` → Open to internet (⚠️ not recommended for production)

---

### 4. EC2 Instance

```hcl
resource "aws_instance" "terraform" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ALLs.id]

  tags = {
    Name      = "terraformS"
    terraform = true
  }
}
```

###  Explanation

* Creates EC2 instance
* Uses AMI ID
* Uses `t3.micro` (free tier eligible)
* Attaches security group using reference:

```hcl
aws_security_group.allow_ALLs.id
```

---

##  Dependency Concept

Terraform automatically understands:

```text
EC2 depends on Security Group
```

Because:

```hcl
vpc_security_group_ids = [aws_security_group.allow_ALLs.id]
```

---

##  How to Run

### Step 1: Initialize Terraform

```bash
terraform init
```

### Step 2: Validate

```bash
terraform validate
```

### Step 3: Plan

```bash
terraform plan
```

### Step 4: Apply

```bash
terraform apply
```

---

## 🧹 Destroy Resources

```bash
terraform destroy
```

---

## ⚠️ Important Notes

* Security group allows all traffic (not secure for production)
* Replace AMI based on your AWS region
* Ensure AWS credentials are configured

---

##  Project Structure

```
Terraform/
 ├── main.tf
 ├── provider.tf
 ├── README.md
```

---

##  Key Concepts Learned

* Terraform provider
* Resource creation
* Security groups
* EC2 provisioning
* Resource dependency
* Tags usage

---

##  Future Improvements

* Restrict ports (SSH, HTTP only)
* Use variables
* Use modules
* Add key pair
* Add VPC configuration

---

##  Author

Vinay Kumar
DevOps Engineer | AWS | Terraform | Ansible

---
