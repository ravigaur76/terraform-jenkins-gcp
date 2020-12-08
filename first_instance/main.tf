
resource "google_compute_instance" "server"{
    count = "${length(var.name_count)}"
    name = "test-${count.index+1}"
    machine_type = var.image_type
    zone = "us-central1-a"
    boot_disk{
        initialize_params{
            image = var.image
        }
    }
    
    network_interface {
        network = "default"
    }

    service_account {
        scopes = ["userinfo-email", "compute-ro", "storage-ro"]
    }
    depends_on = ["google_compute_instance.second"]
}

resource "google_compute_instance" "second"{
    machine_type = var.image_type
    zone = "us-central1-a"
    name = "second"

    boot_disk {
        initialize_params{
            image = var.image
        }
    }
    network_interface{
        network = "default"
    }
}


output "name" {value = "${google_compute_instance.server.*.name}"}
output "machine_type" {value = "${google_compute_instance.server.*.machine_type}"}
output "zone" {value = "${google_compute_instance.server.*.zone}"}


