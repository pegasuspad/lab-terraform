locals {
  // extract useful config values
  assigned_ips        = module.config.ip_addresses
  assigned_vmids      = module.config.vmids
  config_repository   = module.config.config_repository
  datastore_cloudinit = module.config.proxmox_datastore_hdd
  datastore_snippets  = module.config.proxmox_datastore_snippets
  datastore_ssd       = module.config.proxmox_datastore_ssd
  github_owner        = module.config.github_config_repository_owner
  iso_ids             = module.config.iso_ids
  proxmox_node        = module.config.proxmox_default_node
  proxmox_endpoint    = module.config.proxmox_endpoint
  proxmox_insecure    = module.config.proxmox_insecure
  proxmox_ssh_user    = module.config.proxmox_ssh_user
}

module "config" {
  source = "../_config"
}
