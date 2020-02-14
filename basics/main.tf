# Download the latest Ghost image
resource "docker_image" "ghost" {
  name = "ghost:latest"
}

