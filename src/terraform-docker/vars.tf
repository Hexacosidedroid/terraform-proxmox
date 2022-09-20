variable "proxmox_host" {
  default = "45.12.65.130"
}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCn2mk190ClsDSuezsgGhCX/JPcZb9CtB785tCJjLLlvMvmexu6XvBD2s9sGQyc+LryBLwIKr8oWa5ff2KDBZEIu3xByOF0669SdFhya+wgbzMwq7yQC/zKZzi7SD0Co6knwbNc9KWSimFcL+8H78jqbcT7aAgTncdsJoJF+69e6vamp+WMI7M4qbSDdDeDfK+riP5OkT12srhUHCKaYcII+OoMUoLzaz+fEEGwv3NLWXzYqZOH/Yg0Anmo+3yvrV3zwe19ffxWQJCk5ybdjbhpg7lKs5C8/sm8vMi51PcweODQZhMlytrarchC31BDdVZNLTjwk4Jlb+pHK4W7mPSxxrcGHfNu9tA1NJ7toGsKsnurnsy7zJRfNElxhscdYEBV2sraB9+/f7mSuh4fjzo0mGynccTRHXwUUkpz748C9dmll8ybkrsjvO9Px3/1h7+xUwWMPS61NGRaAlf1sSBJhsP7yAt3pyejRSKYvGKLbvchGzcg44wlNvQ5a5EK2KM="
}

variable "virtual_machines" {
  default = {
    "tf-test-01" = {
      hostname = "docker-test-1"
      ip_address = "45.12.65.135/20"
      gateway = "45.12.65.129",
#      vlan_tag = 1,
      target_node = "Poincare",
      cpu_cores = 2,
      cpu_sockets = 1,
      memory = "256",
      hdd_size = "25G",
      vm_template = "debian-11-docker-template-cloud-init",
    },
    "tf-test-02" = {
      hostname = "docker-test-2"
      ip_address = "45.12.65.136/20"
      gateway = "45.12.65.129",
#      vlan_tag = 1,
      target_node = "Poincare",
      cpu_cores = 2,
      cpu_sockets = 1,
      memory = "256",
      hdd_size = "25G",
      vm_template = "debian-11-docker-template-cloud-init",
    },
  }
}