# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.define :nimbus do |nimbus|
    nimbus.vm.box = "ubuntu-12.04.01"
    nimbus.vm.network :bridged
    # nimbus.vm.provision :puppet, :module_path => "modules" , :options => ["--debug"]
    nimbus.vm.provision :puppet,  :options => ["--modulepath=/vagrant/modules:/vagrant/base-env/modules"]
    nimbus.vm.customize ["modifyvm", :id, "--memory", 4096, "--cpus", 6]
    nimbus.vm.host_name = 'nimbus'
    # nimbus.vm.forward_port 8080, 8080
    nimbus.vm.network :hostonly, "192.168.1.10"
  end
  
end
