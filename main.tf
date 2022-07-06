provider "aws" {
  	region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  	bucket = "test-s3-bucket-300575"
  	acl = "private"
  	versioning {
    		enabled = true
  	}

	tags = {
    		Environment = "test"
  	}
}
