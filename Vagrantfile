# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "backup-automation-vm"

  # Redirection du port SSH vers 2201 (évite conflit avec règle existante)
  config.vm.network "forwarded_port", guest: 22, host: 2201, id: "ssh", auto_correct: true

  # Réseau privé avec IP statique (vérifie que c'est compatible avec VirtualBox Host-only)
  config.vm.network "private_network", ip: "192.168.56.100"

  # Provisionnement : mise à jour et installation rsync
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update -y
    sudo apt-get install -y rsync
  SHELL

  # Augmentation du timeout de boot à 10 minutes
  config.vm.boot_timeout = 600
end
