# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider :virtualbox do |vb|
    vb.memory = 1024
  end

  config.vm.box     = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
 
  config.vm.network :private_network, ip: "192.168.50.5"
  config.vm.network "forwarded_port", guest: 7474, host: 7474 

  config.vm.provision :shell, :inline => "sudo apt-get update --fix-missing"

  config.vm.provision :puppet do |puppet|
        #puppet.facter = { "fqdn" => "local.pyrocms", "hostname" => "www" } 
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file  = "neo4j.pp"
        puppet.module_path  = "puppet/modules"
    end
end
