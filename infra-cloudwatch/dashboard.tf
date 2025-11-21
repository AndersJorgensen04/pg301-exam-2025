# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_dashboard

resource "aws_cloudwatch_dashboard" "sentiment_analysis_dashboard" {
    dashboard_name = var.dashboard_name
    dashboard_body = jsonencode({
        widgets = [
            {
                type = "metric"
                properties = {
                    metrics = [
                        ["${var.cloudwatch_namespace}", "sentiment_analysis_duration.avg", {stat = "Average" }]
                    ]
                    view = "timeSeries"
                    stacked = false
                    region = var.aws_region
                    title = "Average Response Time for Sentiment Analysis"
                    period = 300
                    yAxis = {
                        left = {
                            label = "Milliseconds"
                            min = 0
                        }
                    }
                }
                type = "alarm"
                properties = {
                alarms = [
                    aws_cloudwatch_metric_alarm.high_avg_response_time.arn
                ]
                title = "High Average Response Time Alarm"
                region = var.aws_region
                }
            }
        ]
    })
  
}