# to create a repo on github
resource "github_repository" "example" {
  name        = "Terraform"
  description = "This repository was created via Terraform"
  visibility  = "public"

  // Other optional attributes:
  // auto_init            = false
  // gitignore_template   = "Terraform"
  // license_template     = "mit"
  // has_issues           = true
  // has_projects         = true
  // has_wiki             = false
  // allow_merge_commit   = true
  // allow_squash_merge   = true
  // allow_rebase_merge   = true
}