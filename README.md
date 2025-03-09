<p align="center">
  <img src="assets/banner.png" alt="Homelab Automation Banner" width="600">
</p>

# K3s Deployment
```
 _    _                      _       _     
| |  | |                    | |     | |    
| |__| | ___  _ __ ___   ___| | __ _| |__  
|  __  |/ _ \| '_ ` _ \ / _ \ |/ _` | '_ \ 
| |  | | (_) | | | | | |  __/ | (_| | |_) |
|_|  |_|\___/|_| |_| |_|\___|_|\__,_|_.__/ 
    _         _                        _   _             
   / \  _   _| |_ ___  _ __ ___   __ _| |_(_) ___  _ __  
  / _ \| | | | __/ _ \| '_ ` _ \ / _` | __| |/ _ \| '_ \ 
 / ___ \ |_| | || (_) | | | | | | (_| | |_| | (_) | | | |
/_/   \_\__,_|\__\___/|_| |_| |_|\__,_|\__|_|\___/|_| |_|
```

## Overview
This repository contains Infrastructure as Code (IaC) configurations for deploying and managing a K3s Kubernetes cluster on Proxmox. It provides automated deployment of a highly available K3s cluster using Terraform, making it easier to set up and maintain a lightweight Kubernetes environment in your homelab.

## Repository Structure
- `/terraform` - Templates and configurations for Proxmox VM deployments and K3s cluster setup
  - Control plane node configurations
  - Worker node configurations
  - Network configurations
- `/packer` - Custom VM image templates for K3s nodes
  - Base Ubuntu server image configurations
  - Pre-configured K3s dependencies
  - Hardened security settings
  - Optimized system configurations
- `/scripts` - Helper scripts for cluster management and setup
- `/docs` - Additional documentation and guides

## Features
- Automated K3s cluster deployment on Proxmox
  - High Availability control plane setup
  - Configurable worker node scaling
  - Cloud-init integration for node provisioning
  - Customizable VM specifications
- Network configuration for cluster communication
- Load balancer setup for the control plane

### Prerequisites
- Proxmox VE 7.0+ environment
- Terraform installed on your local machine
- Basic understanding of:
  - Kubernetes/K3s concepts
  - Infrastructure as Code
  - Proxmox administration
- Required Proxmox credentials and API access

## Quick Start
1. Clone the repository:
```sh
git clone https://github.com/YourUsername/proxmox-terraform-k3s.git
cd proxmox-terraform-k3s
```

2. Configure your Proxmox credentials (follow instructions in terraform/README.md)
3. Customize the deployment in terraform/variables.tf
4. Deploy your cluster:
```sh
cd terraform
terraform init
terraform plan
terraform apply
```

## Configuration Options
- Control plane node count (1 or 3 for HA)
- Worker node count and specifications
- Network configuration
- Storage allocation
- K3s version
- Add-ons and features

## Contributing
Feel free to submit issues and enhancement requests!

## Credits
This repository is forked from [HomelabDad/proxmox-terraform-base](https://github.com/HomelabDad/proxmox-terraform-base), which provides the foundational boilerplate for Proxmox automation.

## Author
Jared Wilson

## License
_(Add your preferred license)_
