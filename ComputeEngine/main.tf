resource "google_compute_instance" "instance1" {
  name         = "instance1"
  machine_type = "e2-medium"
  tags         = ["vault1"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        label1 = "testlabel"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {

    }
  }

}