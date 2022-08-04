resource "google_compute_network" "final_vpc" {
  name                    = "final_vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}