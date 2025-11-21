variable "aws_region" {
  description = "The AWS"
  type        = string
  default     = "eu-west-1"
}
variable "dashboard_name" {
  description = "Name of CloudWatch dashboard"
  type        = string
  default     = "sentiment_analysis_dashboard"
}
variable "cloudwatch_namespace" {
  description = "CloudWatch namespace for the application metrics"
  type        = string
  default     = "Kandidat-39"
}
variable "kandidat_number" {
  description = "Candidate number"
  type        = string
  default     = "39"
}
variable "alarm_email" {
  description = "Email address for CloudWatch alarm notifications"
  type        = string
}