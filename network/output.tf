output "final_vpc_id" {
  value = google_compute_network.final_vpc.id
}

output "final_vpc_name" {
  value = google_compute_network.final_vpc.id
}

output "public_name" {
  value = google_compute_subnetwork.public.name
}

output "private_name" {
  value = google_compute_subnetwork.private.name
}