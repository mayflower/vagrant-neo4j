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
end
