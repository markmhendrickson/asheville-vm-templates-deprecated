# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Unix username is `asheville` across all services
  config.ssh.default.username = "asheville"

  # The API Service
  config.vm.define :api do |c|
    c.vm.box = "asheville-api-virtualbox-precise64"
    c.vm.box_url = "boxes/asheville-api-virtualbox-precise64"

    c.vm.provider "vmware_fusion" do |v, override|
      override.vm.box = "asheville-api-vmware-precise64"
      override.vm.box_url = "boxes/asheville-api-vmware-precise64.box"
    end

    c.vm.network :private_network, ip: "172.12.12.100"
  end

  # Sync /vagrant on all services, with NFS for reliability (requires root on host)
  config.vm.synced_folder ".", "/vagrant", :nfs => true
end
