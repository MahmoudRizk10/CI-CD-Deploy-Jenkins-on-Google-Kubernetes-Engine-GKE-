provider "google" {
  project = var.project
  region  = var.region
  credentials = file("~/Documents/mahmoudrizk-c5fbc7188042.json")
}