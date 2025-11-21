# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm

resource "aws_cloudwatch_metric_alarm" "high_avg_response_time" {
    alarm_name          = "${var.kandidat_number}-high-avg-response-time"
    comparison_operator = "GreaterThanThreshold"
    evaluation_periods  = 1
    metric_name         = "sentiment.analysis.duration.avg"
    namespace           = var.cloudwatch_namespace
    period              = 60 # timeframe to trigger alarm in seconds
    statistic           = "Average"
    threshold           = 2000 # threshold in milliseconds
    alarm_description   = "Alarm triggers when average response time exceeds 2000 milliseconds"
    treat_missing_data = "notBreaching"
    dimensions = {
      company = "Apple"
      model = "amazon.nova-micro-v1:0"
    }
    alarm_actions       = [ aws_sns_topic.cloudwatch_alarms.arn ]
    ok_actions = [ aws_sns_topic.cloudwatch_alarms.arn ]
    # tags ?
}
