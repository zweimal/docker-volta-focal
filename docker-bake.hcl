variable "VERSION" {
  default = "1.1.1"
}

group "default" {
  targets = ["alpine"]
}

target "focal" {
  dockerfile = "focal.Dockerfile"
  tags = ["zweimal/volta:${VERSION}", "zweimal/volta:latest", "zweimal/volta:focal"]
}

target "alpine" {
  dockerfile = "alpine.Dockerfile"
  tags = ["zweimal/volta:alpine-${VERSION}", "zweimal/volta:alpine]
}

