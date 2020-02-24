variable "env" {
  description = "env: dev or prod"
}

#Define variables
variable "image_name" {
  description = "Image for container."
  default     = "ghost:latest"
}

variable "container_name" {
  type        = map
  description = "Name of the container."
  default = {
    dev  = "blog_dev"
    prod = "blog_prod"
  }
}

variable "image_name" {
  type        = map
  description = "Image for container."
  default = {
    dev  = "ghost:latest"
    prod = "ghost:alpine"
  }
}

variable "int_port" {
  description = "Internal port for container."
  # default     = "2368"
}

variable "ext_port" {
  description = "External port for container."
  # default     = "80"
}
