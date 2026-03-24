# aws_athena_database 
# CKV_AWS_77 Ensure aws_athena_database resource has arguments encryption_option and kms_ket configured for the encryption_configuration object.

resource "aws_athena_database" "CKV_AWS_77_pass" {
  name   = "test_database"
  bucket = "test-bucket-1-qualys"
  encryption_configuration {
    encryption_option = "SSE_KMS" # CKV_AWS_77
  }
}

