resource "helm_release" "thisapp" {
  namespace = var.namespace
  name      = var.name
  chart     = var.chart
  wait      = var.wait
  values    = var.values
}

