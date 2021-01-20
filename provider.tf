provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "phrasal-pad-302305"
  region      = "us-central1-a"
}