resource "proxmox_vm_qemu" "ubuntu" {
  count       = var.vm_count
  name        = "${var.vm_name}-${count.index + 1}"
  target_node = "proxmox" # Change to your Proxmox node name
  clone       = "ubuntu-template" # Change to your template name
  
  cores       = var.vm_cores
  memory      = var.vm_memory
  disk {
    size    = var.vm_disk_size
    type    = "scsi"
    storage = "local-lvm"
  }
  
  network {
    model  = "virtio"
    bridge = var.vm_network
  }
  
  os_type = "cloud-init"
  sshkeys = "your-ssh-key-here"
  
  lifecycle {
    ignore_changes = [network, sshkeys]
  }
}