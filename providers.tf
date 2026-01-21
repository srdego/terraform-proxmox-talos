# Copyright (c) 2026 Jaime de Diego
# SPDX-License-Identifier: MIT

# Providers
terraform {
  required_version = ">= 1.14, < 2.0"

  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.93.0"
    }

    talos = {
      source  = "siderolabs/talos"
      version = ">= 0.10.1"
    }
  }
}

# Providers configuration
provider "proxmox" {
  endpoint  = var.proxmox_endpoint
  api_token = var.proxmox_api_token
  insecure  = var.proxmox_insecure

  ssh {
    agent    = var.proxmox_ssh_use_agent
    username = var.proxmox_ssh_username
  }
}

provider "talos" {}
