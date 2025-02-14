variable "proxmox_api_url" {}
variable "proxmox_user" {}
variable "proxmox_password" {}
variable "vm_count" {
  default = 2
}
variable "vm_name" {
  default = "ubuntu-vm"
}
variable "vm_memory" {
  default = 2048
}
variable "vm_cores" {
  default = 2
}
variable "vm_disk_size" {
  default = "10G"
}
variable "vm_network" {
  default = "vmbr0"
}
