provider "google" {
  credentials = file("C:/Users/aniruth.s/Downloads/stldigital-monitoring-0993bbb88702.json")
  project     = "stldigital-monitoring"
  region      = "us-central1"
}
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-vpc-network"
  auto_create_subnetworks = true # or false if you want to create custom subnets
}
