variable "credentials_file_path" {
  description = "Path to the Google Cloud credentials file"
  type        = string
  default     = "/home/nicolas-caro/.config/gcloud/application_default_credentials.json"
}

variable "project_id" {
  description = "The project ID to deploy resources in"
  type        = string
  default     = "displays-retail-infra"
}

variable "region" {
  description = "The region to deploy resources in"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
  default     = "displays_retail_infra_bucket"
}

variable "iam_members" {
  description = "List of IAM members to grant roles"
  type        = list(string)
  default     = ["user:nicolas.perez.caro.coding@gmail.com"]
}

variable "secret_value" {
  description = "The value of the secret"
  type = string
  sensitive = true
}
