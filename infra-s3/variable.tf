variable "bucket_name" {
    description = "Name of S3 bucket"
    type = string
    default = "kandidat-39-data"
}
variable "kandidatnummer" {
    description = "kandidatnummer"
    type = string
    default = "39"
}
variable "region" {
    description = "AWS region"
    type = string
    default = "eu-west-1"
}