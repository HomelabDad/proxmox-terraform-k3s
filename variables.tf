variable "proxmox_api_url" {
  type = string
}

variable "proxmox_user" {
  type = string
}

variable "proxmox_password" {
  type      = string
  sensitive = true
}

variable "vm_count" {
  type    = number
  default = 2
}

variable "vm_name" {
  type    = string
  default = "ubuntu-vm"
}

variable "vm_memory" {
  type    = number
  default = 2048
}

variable "vm_cores" {
  type    = number
  default = 2
}

variable "vm_disk_size" {
  type    = string
  default = "32G"
}

variable "vm_network" {
  type    = string
  default = "vmbr0"
}

variable "ssh_key" {
  description = "SSH public key string for VM access"
  type        = string
}
