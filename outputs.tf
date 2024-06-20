output "bucket_name" {
  description = "The name of the storage bucket"
  value       = google_storage_bucket.gcp_terraform_bucket.name
}

output "bucket_url" {
  description = "The URL of the storage bucket"
  value       = "gs://${google_storage_bucket.gcp_terraform_bucket.name}"
}

output "bucket_location" {
  description = "The location of the storage bucket"
  value       = google_storage_bucket.gcp_terraform_bucket.location
}
