locals {
  tls_secret_name        = var.tls_certificate_type != "none" ? var.tls_secret_name : ""
}

provider "kubernetes" {
  # host                   = local.host
  # client_certificate     = local.client_certificate
  # client_key             = local.client_key
  # cluster_ca_certificate = local.cluster_ca_certificate
  config_path = var.kubeconfig_path
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

provider "kubectl" {
  config_path = var.kubeconfig_path

  load_config_file = false
}

resource "random_password" "prom_admin_password" {
  length  = 30
  special = false
}

resource "random_password" "redis_admin_password" {
  length  = 30
  special = false
}