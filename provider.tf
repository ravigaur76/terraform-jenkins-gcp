variable "path" {
  type        = string
  default     = "/home/ravi/Desktop/terraformv2/credentials/"
  description = "description"
}


provider "google" {
    project = "terraform-281106"
    region = "us-central1"
    credentials = "${file("${var.path}/client.json")}"
}