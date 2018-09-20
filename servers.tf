resource "google_compute_instance" "first_server" {
  "boot_disk" {
    initialize_params {
    image = "debian-cloud/debian-9"
    }
  }
  machine_type = "n1-standard-1"
  name = "firstserver"
  "network_interface" {
    subnetwork = "${google_compute_subnetwork.my-subnetwork.name}"
   access_config {}
  }
  zone = "us-east1-b"
  metadata
  {
  foo = "bar"
  }
  service_account
  {
    scopes = ["userinfo-email", "compute-ro","storage-ro"]
  }

}