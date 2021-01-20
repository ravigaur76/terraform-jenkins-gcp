terraform {
  backend "gcs" {
    bucket = "phrasal-pad-302305-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
