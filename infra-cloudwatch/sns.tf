resource "aws_sns_topic" "cloudwatch_alarms" {
    name = "${var.kandidat_number}-sentiment-analysis-alarms"
}

resource "aws_sns_topic_subscription" "email_alarm" {
    topic_arn = aws_sns_topic.cloudwatch_alarms.arn
    protocol  = "email"
    endpoint  = var.alarm_email

}