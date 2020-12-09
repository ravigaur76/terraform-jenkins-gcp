provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "terraform-281106"
  region      = "europe-west1"
}