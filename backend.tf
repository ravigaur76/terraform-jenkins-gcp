terraform {
  backend "gcs" {
    bucket = "terraform-281106-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
