variable name {
    description = "the name of the app"
    type = string
    default = "wordpress"
}

variable chart {
    description = "the name of the app"
    type = string
    default = "../applcation"
}

variable wait {
    description = "wait for resource to be ready"
    type = bool
    default = false
}

variable values {
    description = "values of the app"
    type = list(string)
    default = [<<EOF

replicaCount: 3

image:
  repository: wordpress
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"

  EOF
  ]
}

variable namespace {
    description = "namespace of the app"
    type = string
    default = "default"
}