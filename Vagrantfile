# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "web_1" do |web_1|
    web_1.vm.box = "ubuntu/trusty64"
    web_1.vm.provider :virtualbox do |vb|
      vb.customize ['modifyvm', :id, '--name', 'web_1']
      vb.customize ['modifyvm', :id, '--cpus', 1]
      vb.customize ['modifyvm', :id, '--memory', 256]
      vb.customize ['modifyvm', :id, '--cpuexecutioncap', 50]
    end
    web_1.vm.synced_folder "./www_1", "/var/www/html"
    web_1.vm.provision "shell", path: "script.sh"
    web_1.vm.network "forwarded_port", guest: 80, host: 8080
  end
  config.vm.define "web_2" do |web_2|
    web_2.vm.box = "ubuntu/trusty64"
    web_2.vm.provider :virtualbox do |vb|
      vb.customize ['modifyvm', :id, '--name', 'web_2']
      vb.customize ['modifyvm', :id, '--cpus', 1]
      vb.customize ['modifyvm', :id, '--memory', 256]
      vb.customize ['modifyvm', :id, '--cpuexecutioncap', 50]
    end
    web_2.vm.synced_folder "./www_2", "/var/www/html"
    web_2.vm.provision "shell", path: "script.sh"
    web_2.vm.network "forwarded_port", guest: 80, host: 8008
  end

end
