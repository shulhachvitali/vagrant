# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
config.vm.define "docker1" do |docker1|
docker1.vm.box = "sbeliakou/centos-7.2-x86_64"
docker1.vm.hostname = "docker1"
docker1.vm.network "private_network", ip: "192.168.25.100"
docker1.vm.provider "virtualbox" do |cfg|
cfg.name = "docker1"
cfg.cpus = 2
cfg.memory = 1024
end
docker1.vm.provision "shell", inline: <<-SHELL
    rpm --import "https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
    yum update -y
    yum install -y yum-utils
    yum-config-manager --add-repo https://packages.docker.com/1.11/yum/repo/main/centos/7
    yum install -y docker-engine
    usermod -a -G docker vagrant
    systemctl enable docker.service
    systemctl start docker.service
    yum install -y python-pip.noarch
    pip install docker-compose docker-py
  SHELL
end
end
