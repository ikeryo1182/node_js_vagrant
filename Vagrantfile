# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "private_network", ip: "192.168.33.10"
  #config.vm.synced_folder "../puppeteer", "/home/vagrant/puppeteer", type: "rsync", rsync__args: ["--verbose", "--archive", "--compress","--delete"], rsync__exclude: [".git", "vendor","public"]

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["setextradata", :id, "VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled", 0]
  end

  config.vm.provision "shell", :path => "provisioning/provision_init.sh", :privileged => false

  # config.vm.provision "ansible" do |ansible|
  #   ansible.playbook = "provisioning/site.yml"
  #   ansible.inventory_path = "provisioning/development"
  #   ansible.limit = 'all'
  # end
end
