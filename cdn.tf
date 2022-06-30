module "cdn" {
  source = "cloudposse/cloudfront-s3-cdn/aws"

  namespace         = var.namespace
  stage             = var.stage
  name              = var.name
  aliases           = var.aliases
  dns_alias_enabled = true
  parent_zone_name  = var.parent_zone_name

  deployment_principal_arns = {
    "arn:aws:iam::123456789012:role/principal1" = ["prefix1/", "prefix2/"]
    "arn:aws:iam::123456789012:role/principal2" = [""]
  }
}