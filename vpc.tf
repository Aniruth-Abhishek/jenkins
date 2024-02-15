provider "google" {
  credentials = file("/var/lib/jenkins/gcp-credentials/stldigital-monitoring-0993bbb88702.json")
  project     = "stldigital-monitoring"
  region      = "us-central1"
}
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-vpc-network"
  auto_create_subnetworks = true # or false if you want to create custom subnets
}
