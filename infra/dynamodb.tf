locals {
  table_name = var.project_name
}

resource "aws_dynamodb_table" "table" {
  name           = local.table_name
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "ArticleId"

  attribute {
    name = "ArticleId"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }
}
