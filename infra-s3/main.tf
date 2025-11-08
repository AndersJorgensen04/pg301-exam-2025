resource "aws_s3_bucket" "sentimentanalyse" {
    bucket = var.bucket_name
    
 
}
resource "aws_s3_bucket_lifecycle_configuration" "bucket-lifecycle" {
    bucket = aws_s3_bucket.sentimentanalyse.id
     rule {
        id = "move-temp-file"
        filter {
            prefix = "midlertidig/"
        }
        transition {
          days = 365
          storage_class = "GLACIER_IR"
        }
        status = "Enabled"
    }
    rule {
      id = "delete-temp-file"
      filter {
        prefix = "midlertidig/"
      }
      expiration {
        days = 365
      }
      status = "Enabled"
    }
}