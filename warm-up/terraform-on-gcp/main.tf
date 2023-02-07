
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

# Craete Kubernetes cluster(GKE) 
resource "google_container_cluster" "primary" {
  name               = "kubernetes-wramup-cluster-001"
  location           = var.gcp_region
  initial_node_count = 1
  enable_autopilot   = true
  ip_allocation_policy {

  } # terrafprn requires this to create a autopilot cluster
}

# Create Cloud SQL 
resource "google_sql_database_instance" "instance" {
  name             = "cloudwarmupsql"
  region           = var.gcp_region
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = "true"
}

# Create Database
resource "google_sql_database" "database" {
  name = "my-databse"
  #   instance = "cloudwarmupsql" refer to instance name
  instance = google_sql_database_instance.instance.name
}
