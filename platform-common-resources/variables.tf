
variable "cluster_issuer_email" {
  type = string
}

variable "cluster_issuer_name" {
  type    = string
  default = "letsencrypt-prod"
}

variable "tls_secret_name" {
  type    = string
  default = "letsencrypt-prod"
}

variable "tls_certificate_type" {
  type = string
}

variable "namespace" {
  type = string
}

variable "monitoring_namespace" {
  type    = string
  default = "cosmotech-monitoring"
}

variable "ingress_nginx_version" {
  type = string
}

variable "create_prometheus_stack" {
  type = bool
}

variable "api_dns_name" {
  type = string
}

variable "kube_config" {
}

variable "certificate_cert_content" {
}

variable "certificate_key_content" {
}

variable "loki_release_name" {
  type    = string
  default = "loki"
}
variable "loki_persistence_memory" {
  type    = string
  default = "4Gi"
}

variable "loki_retention_period" {
  type    = string
  default = "720h"
}

variable "helm_repo_url" {
  type    = string
  default = "https://grafana.github.io/helm-charts"
}

variable "helm_chart" {
  type    = string
  default = "loki-stack"
}

variable "loki_max_entries_limet_per_query" {
  type    = number
  default = 50000
}