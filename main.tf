resource "google_storage_bucket" "gcp_terraform_bucket" {
  name          = var.bucket_name
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.gcp_terraform_bucket.name
  role = "roles/storage.admin"
  members = var.iam_members
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.gcp_terraform_bucket.name
  role = "roles/storage.admin"
  member = var.iam_members[0]
}

resource "google_secret_manager_secret" "database_secret" {
  secret_id = "database_url"

  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "database_secret_version" {
  secret = google_secret_manager_secret.database_secret.id
  secret_data = var.secret_value
}