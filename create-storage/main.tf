resource "kubernetes_namespace" "storage_namespace" {
  metadata {
    name = "longhorn-system" # Longhorn chart must be installed in the longhorn-system namespace only
  }
}

resource "helm_release" "longhorn"{
  name = "longhorn"
  repository = "https://charts.longhorn.io"
  chart = "longhorn"
  version = var.longhorn_version
}