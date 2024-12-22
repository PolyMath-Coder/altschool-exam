# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.box_version = "1.0.282"
  config.vm.synced_folder "./", "/var/www/html"
  config.vm.boot_timeout = 34000
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get install -f
    sudo apt-get update
    sudo apt install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
  SHELL
end
