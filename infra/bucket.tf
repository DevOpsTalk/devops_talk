# KOPS state bucket

resource "aws_s3_bucket" "kops" {
  bucket = "kops-jomps-state-store"
}
