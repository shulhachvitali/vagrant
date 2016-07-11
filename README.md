# vagrant
1. I have installed vagrant and virtual box ver.5, using yum install:
First, I downloaded virtual box rpm into yum.repos.d folder;
After installed utils: (yum install binutils qt gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms)
Then installed virtual box, and rebuilt kernel.
As a resalt, I have created new vagrant project, on base of centos image (see screen 1)
2. I have configured VM’s in single Vagrantfile, with shared folder for two VMs (folder "sources"). You can see this into my Vagrant config file.
After pre-congiguring and starting VMs I've installed Apache+mod_jk and tomcat into VMs. (screen 2)
3. I`ve made scripts from commands I used to install everything, and include its into vm's block in Vagrant config file. 
Also I add a common script for all VMs, wich create a file with the date of machines' creating.
I have tested the end configuration, everything work properly.
![alt text](https://github.com/shulhachvitali/vagrant/blob/master/sources/1-3.png?raw=true "Pic 1")
![alt text](https://github.com/shulhachvitali/vagrant/blob/master/sources/Installed_and%20configured_apache_and_tomcat.png?raw=true "Pic 1")
