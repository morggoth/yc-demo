output "vpc_name" {
  value = module.network.vpc_name
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "vm_names" {
  value = module.vms.vm_name
}

output "vm_ids" {
  value = module.vms.vm_id
}

output "vm_internal_addresses" {
  value = module.vms.vm_internal_address
}

output "vm_external_addresses" {
  value = module.vms.vm_external_address
}

output "vm_fqdns" {
  value = module.vms.vm_fqdn
}