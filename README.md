# proxmox-terraform-base

## Overview
This project uses Terraform to automate the deployment of Ubuntu virtual machines on a Proxmox hypervisor. It allows you to quickly spin up multiple VMs with predefined configurations.

## Features
- Deploys multiple Ubuntu VMs on Proxmox
- Uses cloud-init for initial setup
- Configurable VM specs (CPU, RAM, Disk size, Network)
- Outputs assigned IP addresses

## Prerequisites
- A running Proxmox instance
- Terraform installed (>=1.2.0)
- Proxmox API credentials
- A pre-configured Ubuntu template in Proxmox

## Setup Instructions

### 1. Clone the Repository
```sh
git clone https://github.com/HomelabDad/proxmox-terraform-base.git
cd proxmox-terraform-base
```

### 2. Configure Terraform Variables

Create a `terraform.tfvars` file with your Proxmox credentials and settings:

```sh
proxmox_api_url  = "https://your-proxmox-url:8006/api2/json"
proxmox_user     = "root@pam"
proxmox_password = "your-password"
vm_name          = "homelab-vm"
vm_memory        = 4096
vm_cores         = 2
vm_disk_size     = "20G"
vm_network       = "vmbr0"
```

### 3. Initialize Terraform

```sh
terraform init
```

### 4. 

```sh
terraform plan
terraform apply -auto-approve
```

### 5.

After deployment, Terraform will output the assigned IP addresses:

```sh
echo "VM IPs: $(terraform output vm_ips)"
```

### Customization 

You can modify variables.tf to set default values for your VMs. Adjust CPU, RAM, and storage settings to fit your needs.

### Cleanup

To destroy the created VMs:

```sh
terraform destroy -auto-approve
```

#### Author: Jared Wilson
