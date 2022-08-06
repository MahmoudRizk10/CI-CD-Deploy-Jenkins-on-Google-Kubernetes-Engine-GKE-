module "network" {
  source = "./network"
  project = var.project
  region = var.region
  public_cider_range = var.public_cider_range
  private_cider_range = var.private_cider_range
}

module "gke" {
  source = "./gke"
  project = var.project
  region = var.region
  network_name = module.network.final_vpc_name
  subnet_name = module.network.private_name
  pods_ipv4_cidr_block = var.pods_ipv4_cidr_block
  services_ipv4_cidr_block = var.services_ipv4_cidr_block
  master_ipv4_cidr_block = var.master_ipv4_cidr_block
  master_authorized_networks_cidr = var.public_cider_range

  depends_on = [module.network] 
}