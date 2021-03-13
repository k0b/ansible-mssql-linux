# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  
  # create some ubuntu servers

  # https://docs.vagrantup.com/v2/vagrantfile/tips.html

  # create mgmt node

  config.vm.define :mgmt do |mgmt_conf|
      mgmt_conf.vm.box = "generic/centos8"
      mgmt_conf.vm.hostname = "mgmt"
      mgmt_conf.vm.network :private_network, ip: "192.168.180.5"
      mgmt_conf.vm.synced_folder ".", "/vagrant", disabled: false
      mgmt_conf.vm.provider "vmware_workstation" do |vb|
        vb.vmx["memsize"] = 1024
        vb.vmx["ethernet1.vnet"] = "/dev/vmnet8"
      end
#      mgmt_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
  end

  # create some db servers

  (1..3).each do |i|
    config.vm.define "db#{i}" do |db_conf|
        db_conf.vm.box = "generic/centos8"
        db_conf.vm.hostname = "db#{i}"
        db_conf.vm.network :private_network, ip: "192.168.180.5#{i}"
        db_conf.vm.provider "vmware_workstation" do |vb|
          vb.vmx["memsize"] = 2048
          vb.vmx["ethernet1.vnet"] = "/dev/vmnet8"
        end
    end
  end

end

