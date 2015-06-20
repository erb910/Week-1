# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "192.168.60.20"
  config.vm.hostname = "yyclone.dev"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "2048"]
  end
  config.vm.provision :shell do |shell|
    shell.path = "provision.sh"
  end
end
