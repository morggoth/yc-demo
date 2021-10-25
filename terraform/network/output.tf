output "vpc_name" {
  value = yandex_vpc_network.demo.name
}

output "vpc_id" {
  value = yandex_vpc_network.demo.id
}

output "subnet_id" {
  value = yandex_vpc_subnet.demo.id
}