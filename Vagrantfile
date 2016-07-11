# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
#creating synsed folder
config.vm.synced_folder "/home/Student/vagrant/mntlab/sources/", "/home/sources",
owner: "root", group: "root",
create: true
#Configurationg of VMs
config.vm.define "web" do |web|
web.vm.box = "sbeliakou/centos-6.7-x86_64"
web.vm.hostname = "web"
web.vm.network "private_network", ip: "192.168.25.100"
web.vm.network "forwarded_port", guest: 80, host: 8180
web.vm.provider "virtualbox" do |cfg|
cfg.name = "web-apache"
cfg.cpus = 1
cfg.memory = 512
end
web.vm.provision "shell", path: "web.sh"
end
config.vm.define "app" do |app|
app.vm.box = "sbeliakou/centos-6.7-x86_64"
app.vm.hostname = "app"
app.vm.network "private_network", ip: "192.168.25.200"
app.vm.network "forwarded_port", guest: 8080, host: 8280
app.vm.provider "virtualbox" do |cfg|
cfg.name = "app-tomcat"
cfg.customize ["modifyvm", :id, "--cpuexecutioncap", "35"]
cfg.memory = 1024
end
app.vm.provision "shell", path: "app.sh"
end
config.vm.provision "shell", path: "sources/script.sh"
end

