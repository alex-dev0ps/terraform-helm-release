# terraform-helm-release

### please add the following code
```
module app {
    source = "alex-dev0ps/release/helm"
    namespace = "default"
    name = "wordpress"
    wait = false
    chart = "./applcation"
    values = [<<EOF
replicaCount: 3
image:
  repository: wordpress
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
  EOF
  ]
}
```