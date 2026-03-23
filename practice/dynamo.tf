resource "aws_dynamodb_table" "madinas-dynamodb-table" {
    name         = var.dynamodb_table_name
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "UserID"
    
    attribute {
        name = "UserID"
        type = "S"
    }
    
    tags = {
        Name = "madinas-dynamodb-table"
    }
}