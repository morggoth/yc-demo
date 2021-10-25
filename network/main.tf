terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.65.0"
    }
  }
}

locals {
  labels = var.labels
}

resource "yandex_vpc_network" "demo" {
  name = var.vpc_name

  labels = local.labels
}

resource "yandex_vpc_subnet" "demo" {
  network_id     = yandex_vpc_network.demo.id
  v4_cidr_blocks = var.cidr_block
  zone           = var.zone

  labels = local.labels
}