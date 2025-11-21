output "sns_topic_arn" {
    description = "ARN of SNS topic for the alarms"
    value       = aws_sns_topic.cloudwatch_alarms.arn
}
output "dashboard_name" {
    description = "Name of the CloudWatch dashboard"
    value       = aws_cloudwatch_dashboard.sentiment_analysis_dashboard.dashboard_name
}
output "dashboard_url" {
    description = "URL of the CloudWatch dashboard"
    value       = "https://${var.aws_region}.console.aws.amazon.com/cloudwatch/home?region=${var.aws_region}#dashboards:name=${aws_cloudwatch_dashboard.sentiment_analysis_dashboard.dashboard_name}"
}
output "alarm_names" {
    description = "Names of alarm for sentiment analysis"
    value       = [
        aws_cloudwatch_metric_alarm.high_avg_response_time.alarm_name
    
    ]
}