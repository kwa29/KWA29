# Specify the provider (GCP, AWS, Azure)
provider "google" {
credentials = "${file("terraform-account.json")}"
project = "fifth-diode-651"
region = "us-central1"
}