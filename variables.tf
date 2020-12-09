variable "image"{
    default = "ubuntu-os-cloud/ubuntu-1604-lts"
}

variable "image_type"{
    default = "n1-standard-1"
}

variable "zone" {
    default = ["us-central1-a","us-central1-b","us-central1-c"]
}

variable "name_count" {
    default = ["server1","server2","server3"]
}