# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define :nimbus do |nimbus|
    nimbus.vm.box = "ubuntu-12.04.01"
    nimbus.vm.network :bridged
    nimbus.vm.provision :puppet, :module_path => "modules" #, :options => ["--debug"]
    nimbus.vm.customize ["modifyvm", :id, "--memory", 2048, "--cpus", 4]
    nimbus.vm.host_name = 'nimbus'
    nimbus.vm.network :hostonly, "192.168.1.10"
  end

   config.vm.define :super_a do |supervisor|
    supervisor.vm.box = "ubuntu-12.04.01"
    supervisor.vm.network :bridged
    supervisor.vm.provision :puppet, :module_path => "modules"
    supervisor.vm.customize ["modifyvm", :id, "--memory", 4096, "--cpus", 4]
    supervisor.vm.host_name = 'supervisor-a'
    supervisor.vm.network :hostonly, "192.168.1.11"
  end
 
   config.vm.define :super_b do |supervisor|
    supervisor.vm.box = "ubuntu-12.04.01"
    supervisor.vm.network :bridged
    supervisor.vm.provision :puppet, :module_path => "modules"
    supervisor.vm.customize ["modifyvm", :id, "--memory", 4096, "--cpus", 4]
    supervisor.vm.host_name = 'supervisor-b'
    supervisor.vm.network :hostonly, "192.168.1.12"
  end
   
end
