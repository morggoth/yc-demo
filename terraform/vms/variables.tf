variable "vms_count" {
  type        = number
  description = "Number of VMs"
}

variable "vm_cores" {
  type        = number
  description = "The number of VM cores"
  default     = 2

  validation {
    condition     = var.vm_cores >= 2
    error_message = "The number of VM cores must be a number greater than 2."
  }
}

variable "vm_memory" {
  type    = number
  default = 2

  validation {
    condition     = var.vm_memory >= 2
    error_message = "The amount of memory must be greater than 2."
  }
}

variable "subnet_id" {
  type = string
}

// Image variables
variable "image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "image_folder" {
  type    = string
  default = "standard-images"
}

variable "labels" {
  type = map(string)
}

variable "public_key" {
  type        = string
  description = "Content if the public SSH-key"
}

variable "vm_user" {
  type        = string
  description = "Name of the VM user"
  default     = "ubuntu"
}

variable "vm_nat" {
  type = bool
  default = true
}