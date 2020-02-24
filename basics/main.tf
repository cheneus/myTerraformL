# Download the latest Ghost image
resource "docker_image" "image_id" {
  # name = var.image_name
  name = lookup(var.image_name, var.env)
}

# Start the Container
resource "docker_container" "container_id" {
  name  = lookup(var.container_name, var.env) #var.container_name
  image = docker_image.image_id.latest
  ports {
    internal = var.int_port
    external = lookup(var.ext_port, var.env) #var.ext_port
  }
}

#Output the IP Address of the Container
output "ip_address" {
  value       = docker_container.container_id.ip_address
  description = "The IP for the container."
}

#Output the Name of the Container
output "container_name" {
  value       = docker_container.container_id.name
  description = "The name of the container."
}
