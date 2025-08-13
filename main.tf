# main.tf
provider "aws" { region = var.region }

# Immutable, versioned storage for model cards & technical docs
resource "aws_s3_bucket" "model_cards" {
  bucket        = "ai-model-cards-prod"
  force_destroy = false
}

resource "aws_s3_bucket_versioning" "model_cards_ver" {
  bucket = aws_s3_bucket.model_cards.id
  versioning_configuration { status = "Enabled" }
}

# Index of models and versions (for audits)
resource "aws_dynamodb_table" "model_index" {
  name         = "ai-model-index"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "model_id"
  range_key    = "version"

  attribute { name = "model_id" type = "S" }
  attribute { name = "version"  type = "S" }
}

# CI output example: path to the current model card
output "model_card_path" {
  value = "s3://${aws_s3_bucket.model_cards.bucket}/credit-scoring-hris-v2/1.3/model_card.md"
}
