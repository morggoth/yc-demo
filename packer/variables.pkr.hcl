variable "folder_id" {
  type      = string
  sensitive = true
}

variable "ssh_username" {
  type      = string
}

variable "source_image_family" {
  type = string
}

variable "artifact_dir" {
  type        = string
  description = "A directory for a manifest file"
}

variable "image_name" {
  type = string
}

variable "image_family" {
  type = string
}