output "public_ip" {
    value = aws_instance.this.public_ip
    description = "Public ip of the instance created"
}

output "private_ip" {
    value = aws_instance.this.private_ip
    description = "private ip of the instance created"
}

output "instance_id" {
    value = aws_instance.this.id
    description = "private ip of the instance created"
}

