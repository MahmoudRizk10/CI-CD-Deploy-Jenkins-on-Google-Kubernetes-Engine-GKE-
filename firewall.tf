resource "google_compute_firewall" "allowssh" {
  depends_on = [module.network]
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["bastion"]

  name    = "allowssh"
  network = module.network.final_vpc_name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  allow {
    protocol = "icmp"
  }

}