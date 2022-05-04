variable "default_folder_id" { //your folder-id
  default = "b1g67uo02ppktpkktrpg"
}

variable "default_cloud_id" { //your cloud-id
  default = "b1g5q8h52km0rg0tf67a"
}

variable "default_token" { //your token that should be generated by 'yc iam create-token'
  type = string
  default = "<your token>"
}
variable "default_service_account_id" { //your service-account id
  default = "<your service-account id>"
}

variable "default_network_id" { //your network-id
  default = "<your network-id>"
}

variable "default_zone" { //your default zone that is defined in provider.tf file
  default = "<your default zone>"
}

variable "default_subnet_id_zone_a" {//your subnet-id in zone-a
  default = "<your subnet-id in zone-a>"
}

variable "default_subnet_id_zone_b" {//your subnet-id in zone-b
  default = "<your subnet-id in zone-b>"
}

variable "default_subnet_id_zone_c" {//your subnet-id in zone-c
  default = "<your subnet-id in zone-c>"
}
