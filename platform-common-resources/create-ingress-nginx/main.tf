locals {
  values_ingress_nginx = {
    "MONITORING_NAMESPACE"                     = var.monitoring_namespace
    "NGINX_INGRESS_CONTROLLER_REPLICA_COUNT"   = 1
    "NAMESPACE"                                = var.namespace
    "TLS_SECRET_NAME"                          = var.tls_secret_name
  }
  instance_name = "${var.helm_release_name}-${var.namespace}"
}

resource "kubernetes_namespace" "monitoring_namespace" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "ingress-nginx" {
  name       = local.instance_name
  repository = var.helm_repo_url
  chart      = var.helm_release_name
  version    = var.ingress_nginx_version
  namespace  = var.namespace

  reuse_values = true

  values = [
    templatefile("${path.module}/values-vanilla.yaml", local.values_ingress_nginx)
  ]
}