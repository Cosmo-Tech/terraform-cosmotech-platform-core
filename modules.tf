module "cosmotech-platform" {
  source                           = "./platform-common-resources"
  kubeconfig_path                  = var.kubeconfig_path
  cluster_issuer_email             = var.cluster_issuer_email
  cluster_issuer_name              = var.cluster_issuer_name
  tls_secret_name                  = local.tls_secret_name
  tls_certificate_type             = var.tls_certificate_type
  namespace                        = var.namespace # could be whatever should be replaced later on (keep)
  monitoring_namespace             = var.monitoring_namespace
  ingress_nginx_version            = var.ingress_nginx_version
  create_prometheus_stack          = var.create_prometheus_stack
  api_dns_name                     = var.fqdn # we definetely need
  certificate_cert_content         = var.tls_certificate_custom_certificate
  certificate_key_content          = var.tls_certificate_custom_key
  loki_release_name                = var.loki_release_name
  loki_persistence_memory          = var.loki_persistence_memory
  loki_retention_period            = var.loki_retention_period
  helm_repo_url                    = var.helm_repo_url
  helm_chart                       = var.helm_chart
  loki_max_entries_limet_per_query = var.loki_max_entries_limet_per_query
}
