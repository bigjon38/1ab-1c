# Explanation: Outputs are your mission report—what got built and where to find it.
output "chewbacca_vpc_id" {
  value = aws_vpc.chewbacca_vpc01.id
}

output "chewbacca_public_subnet_ids" {
  value = aws_subnet.chewbacca_public_subnets[*].id
}

output "chewbacca_private_subnet_ids" {
  value = aws_subnet.chewbacca_private_subnets[*].id
}

output "chewbacca_ec2_instance_id" {
  value = aws_instance.chewbacca_ec201.id
}

output "chewbacca_rds_endpoint" {
  value = aws_db_instance.chewbacca_rds01.address
}

output "chewbacca_sns_topic_arn" {
  value = aws_sns_topic.chewbacca_sns_topic01.arn
}

output "chewbacca_log_group_name" {
  value = aws_cloudwatch_log_group.chewbacca_log_group01.name
}

output "chewbacca_route53_zone_id" {
  value = local.chewbacca_zone_id
}

output "chewbacca_app_url_https" {
  value = "https://${var.app_subdomain}.${var.domain_name}"
}

output "chewbacca_apex_url_https" {
  value = "https://${var.domain_name}"
}

output "chewbacca_alb_logs_bucket_name" {
  value = var.enable_alb_access_logs ? aws_s3_bucket.chewbacca_alb_logs_bucket01[0].bucket : null
}

output "chewbacca_waf_log_destination" {
  value = var.waf_log_destination
}

output "chewbacca_waf_cw_log_group_name" {
  value = var.waf_log_destination == "cloudwatch" ? aws_cloudwatch_log_group.chewbacca_waf_log_group01[0].name : null
}

output "chewbacca_waf_logs_s3_bucket" {
  value = var.waf_log_destination == "s3" ? aws_s3_bucket.chewbacca_waf_logs_bucket01[0].bucket : null
}

output "chewbacca_waf_firehose_name" {
  value = var.waf_log_destination == "firehose" ? aws_kinesis_firehose_delivery_stream.chewbacca_waf_firehose01[0].name : null
}

output "ns_records" {
  value = aws_route53_zone.team_zone.name_servers
}
