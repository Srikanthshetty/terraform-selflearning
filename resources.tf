resource "google_compute_network" "Our_development_network" {
name = "devnetwork"
auto_create_subnetworks = true
}
