provider "aws" {
    region = "us-east-1"
    access_key = var.aws-access_key
    secret_key = var.aws-secret_key
}

provider "aws" {
    region = "us-east-2"
    access_key = var.aws-access_key
    secret_key = var.aws-secret_key
    alias = "east-2"
}


provider "github" {
  token        = var.github-token
#   organization = "your-github-organization"

  // Uncomment if you're using GitHub Enterprise with a custom API endpoint
  // base_url = "https://your-github-enterprise/api/v3"
}
