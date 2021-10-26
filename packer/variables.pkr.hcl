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

variable "use_upv4_nat" {
  type    = string
  default = "true"
}

variable "artifact_dir" {
  type        = string
  description = "A directory for a manifest file"
}
