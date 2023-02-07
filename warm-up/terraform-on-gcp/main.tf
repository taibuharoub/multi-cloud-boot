
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.37.0"
    }
  }
}

# configure the provider 
provider "google" {
  project = var.gcp_project_id
}

# Craete Kubernetes cluster 
resource "google_container_cluster" "primary" {
  name               = "kubernetes-wramup-cluster-001"
  location           = var.gcp_region
  initial_node_count = 1
  enable_autopilot   = true
  ip_allocation_policy {

  } # terrafprn requires this to create a autopilot cluster
}
