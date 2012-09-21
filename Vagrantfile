# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define :nimbus do |nimbus|
    nimbus.vm.box = "ubuntu-12.04.01"
    nimbus.vm.network :bridged
    nimbus.vm.provision :puppet, :module_path => "modules" #, :options => ["--debug"]
    nimbus.vm.customize ["modifyvm", :id, "--memory", 4096, "--cpus", 6]
    nimbus.vm.host_name = 'nimbus'
    nimbus.vm.network :hostonly, "192.168.1.10"
  end

   config.vm.define :worker do |worker|
    worker.vm.box = "ubuntu-12.04.01"
    worker.vm.network :bridged
    worker.vm.provision :puppet, :module_path => "modules" #, :options => ["--debug"]
    worker.vm.customize ["modifyvm", :id, "--memory", 4096, "--cpus", 4]
    worker.vm.host_name = 'worker'
    worker.vm.network :hostonly, "192.168.1.11"
  end
  
end
