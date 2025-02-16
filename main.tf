resource "proxmox_vm_qemu" "ubuntu" {
  count       = var.vm_count
  name        = "${var.vm_name}-${count.index + 1}"
  target_node = "proxmox"         # Change to your Proxmox node name
  clone       = "ubuntu-template" # Change to your template name

  cores  = var.vm_cores
  memory = var.vm_memory
  scsihw = "virtio-scsi-pci" # Ensure correct SCSI controller

  disk {
    slot    = "scsi0"
    size    = var.vm_disk_size
    type    = "disk"
    storage = "local-lvm"
  }

  network {
    id     = 0
    model  = "virtio"
    bridge = var.vm_network
  }

  os_type = "cloud-init"
  sshkeys = var.ssh_key # Pass SSH key directly as a string

  lifecycle {
    ignore_changes = [network, sshkeys]
  }
}