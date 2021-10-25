terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.65.0"
    }
  }
}

locals {
  labels  = var.labels
  vm_name = "demo"
}

data "yandex_compute_image" "ubuntu" {
  family    = var.image_family
  folder_id = var.image_folder
}

resource "yandex_compute_instance" "demo" {
  count = var.vms_count

  name = "${local.vm_name}-${count.index}"

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat = var.vm_nat
  }
  resources {
    cores  = var.vm_cores
    memory = var.vm_memory
  }

  metadata = {
    ssh-keys = "${var.vm_user}:${var.public_key}"
  }

  labels = local.labels
}