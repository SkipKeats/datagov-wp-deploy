# -*- mode: ruby -*-
# vi: set ft=ruby :

# Configuring a basic box with Ubuntu 14.04, 64 bit.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  #Check to see if the box is outdated. If so, update
  config.vm.box_check_update = true

  # Configure private network using hostmanager plugin
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.vm.hostname = 'wp.local'
  config.vm.network :private_network, ip: '192.168.10.82'

  # Box configuration changes
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Edit the default box name
    vb.name = "UT14.04-64bit: WP Web"

    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  #config.vm.provision :shell, :path => "usetup.sh"

  # Provision vm through ansible
  configure.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/datagov-web.yml"
    ansible.limit = "wordpress-web"
  end

end
