output "vm_name" {
  value = yandex_compute_instance.demo.*.name
}

output "vm_id" {
  value = yandex_compute_instance.demo.*.id
}

output "vm_internal_address" {
  value = yandex_compute_instance.demo.*.network_interface.0.ip_address
}

output "vm_external_address" {
  value = yandex_compute_instance.demo.*.network_interface.0.nat_ip_address
}

output "vm_fqdn" {
  value = yandex_compute_instance.demo.*.fqdn
}
