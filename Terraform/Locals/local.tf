locals {
    instance_type = "t3.micro"
    common_name = "${var.project}-${var.environment}"
    AMI_ID = data.aws_ami.joindevops.id
    EC_Tags = merge(
      var.ec2_tags,
      {
          Name = "${local.common_name}-locals-Demo"
      }
    )
}