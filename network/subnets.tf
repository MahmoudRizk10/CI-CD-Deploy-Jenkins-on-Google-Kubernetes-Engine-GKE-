resource "google_compute_subnetwork" "public" {
  name          = "public"
  ip_cidr_range = var.public_cider_range
  region        = var.region
  private_ip_google_access = true
  network       = google_compute_network.final_vpc.id
  }

resource "google_compute_subnetwork" "private" {
  name          = "private"
  ip_cidr_range = var.private_cider_range
  region        = var.region
  private_ip_google_access = true
  network       = google_compute_network.final_vpc.id
}