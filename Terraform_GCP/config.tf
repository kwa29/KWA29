// Set each variable and uncomment the "default" line and copy to "config.tf", otherwise Terraform will prompt you for the value.

variable "auth_file_path" {
	description = "Google Cloud auth file for your project"
	default = "~/.ssh/KWA29-2ce85b4f6207.json"
}

variable "public_key_path" {
	description = "Public key path"
	default = "~/.ssh/google_compute_engine.pub"
}

variable "private_key_path" {
	description = "Private key path"
	default = "~/.ssh/google_compute_engine"
}

variable "project_id" {
	description = "Google Project ID (NOT project name) - must have been created before starting this script"
	default = "kwa29-29200"
}

variable "project_zone" {
	// Choose a general zone from https://cloud.google.com/about/locations/
	description = "Google Project Zone"
	default = "europe-west1"
}

variable "storage_zone" {
	// Choose a storage zone from https://cloud.google.com/storage/docs/bucket-locations
	// Recommended to match machine zone for reduced latency
	description = "Desired zone for Google Storage (i.e. europe-west1)"
	default = "europe-west1"
}

variable "machine_type" {
	// Choose a machine type name from https://cloud.google.com/compute/docs/machine-types#predefined_machine_types
	// Recommended: n1-highcpu-4 for several concurrent transcoding and streaming jobs
	description = "Desired machine type (i.e. f1-micro)"
	default = "f1-micro"
}

variable "machine_zone" {
	// Choose a zone from https://cloud.google.com/compute/docs/regions-zones/regions-zones
	description = "Desired zone for Google Compute (i.e. europe-west1-b)"
	default = "europe-west1-b"
}