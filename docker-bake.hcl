variable "VERSION" {
  default = "1.1.1"
}

group "default" {
  targets = ["focal"]
}

target "focal" {
  dockerfile = "focal.Dockerfile"
  tags = ["zweimal/volta:${VERSION}", "zweimal/volta:latest", "zweimal/volta:focal"]
}

