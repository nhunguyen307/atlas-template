table "atlas_schema_revisions" {
  schema  = schema.example
  collate = "utf8mb4_bin"
  column "version" {
    null = false
    type = varchar(255)
  }
  column "description" {
    null = false
    type = varchar(255)
  }
  column "type" {
    null     = false
    type     = bigint
    default  = 2
    unsigned = true
  }
  column "applied" {
    null    = false
    type    = bigint
    default = 0
  }
  column "total" {
    null    = false
    type    = bigint
    default = 0
  }
  column "executed_at" {
    null = false
    type = timestamp
  }
  column "execution_time" {
    null = false
    type = bigint
  }
  column "error" {
    null = true
    type = longtext
  }
  column "error_stmt" {
    null = true
    type = longtext
  }
  column "hash" {
    null = false
    type = varchar(255)
  }
  column "partial_hashes" {
    null = true
    type = json
  }
  column "operator_version" {
    null = false
    type = varchar(255)
  }
  primary_key {
    columns = [column.version]
  }
}
table "posts" {
  schema = schema.example
  column "id" {
    null = false
    type = int
  }
  column "user_id" {
    null = false
    type = int
  }
  column "title" {
    null = false
    type = varchar(255)
  }
  column "body" {
    null = false
    type = text
  }
  primary_key {
    columns = [column.id]
  }
}
table "users" {
  schema = schema.example
  column "id1" {
    null = false
    type = int
  }
  column "user_name" {
    null = false
    type = varchar(255)
  }
  column "email" {
    null = false
    type = varchar(255)
  }
  primary_key {
    columns = [column.id1]
  }
}
schema "example" {
  charset = "utf8mb4"
  collate = "utf8mb4_0900_ai_ci"
}
