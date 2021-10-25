variable "vpc_name" {
  type    = string
  default = "demo"
}

variable "cidr_block" {
  type = list(string)
  default = [
    "10.0.0.0/16"
  ]
}

variable "zone" {
  type = string
}

variable "labels" {
  type = map(string)
}
