terraform {
  required_version = "v1.0.8"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.65.0"
    }
  }
}

locals {
  labels = {
    created_by = "morggoth"
    purpose    = "vm_demo"
  }

  manifest     = jsondecode(file("${path.module}/../artifact/manifest.json"))
  image_id     = local.manifest["builds"][0]["custom_data"]["image_id"]
  ssh_username = local.manifest["builds"][0]["custom_data"]["ssh_username"]
}

provider "yandex" {
  # Configuration options
  cloud_id  = var.cloud_id
  folder_id = var.folder_id

  zone = var.zone
}

module "network" {
  source = "./network"

  zone   = var.zone
  labels = local.labels
}

module "vms" {
  source = "./vms"

  subnet_id  = module.network.subnet_id
  image_id   = local.image_id
  vm_user    = local.ssh_username
  vms_count  = 2
  public_key = file("${path.module}/files/yc_demo.pub")
  labels     = local.labels
}
