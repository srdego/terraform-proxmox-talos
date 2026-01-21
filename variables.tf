# Copyright (c) 2026 Jaime de Diego
# SPDX-License-Identifier: MIT

# Proxmox provider configuration
variable "proxmox_endpoint" {
  description = <<-EOT
    Full Proxmox API endpoint, including scheme and /api2/json suffix.
    For example: `https://bm-01.example.com:8006/api2/json`
  EOT
  type        = string
}

variable "proxmox_api_token" {
  description = <<-EOT
    API token with rights to manage VMs and upload snippets.
    It should be in the form: `user@realm!token-id=secret`
  EOT
  type        = string
}

variable "proxmox_insecure" {
  description = "Set true to skip TLS verification when Proxmox uses a self-signed certificate."
  type        = bool
  default     = false
}

variable "proxmox_ssh_username" {
  description = "PAM username used for SSH/SFTP operations (such as snippet uploads)."
  type        = string
}

variable "proxmox_ssh_use_agent" {
  description = "Set true to rely on the local SSH agent for SFTP authentication."
  type        = bool
  default     = true
}
