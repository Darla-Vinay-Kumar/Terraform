resource "aws_route53_record" "ROBOSHOP" {
    for_each = aws_instance.testing
    zone_id = var.zone_id
    name = "${each.key}.${var.DomainName}"
    type = "A"
    ttl = 1
    records = [each.value.private_ip]
    allow_overwrite = true
}