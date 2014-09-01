# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  ## For masterless, mount your salt file root
  config.vm.synced_folder "salt/roots/", "/srv/salt/"
  config.vm.synced_folder "/home/jforcada/work/cheapplay/cheapplay/", "/home/vagrant/app/"

  ## Port forwarding
  config.vm.network "forwarded_port", guest: 80, host: 8080

  ## Use all the defaults:
  config.vm.provision :salt do |salt|

    salt.minion_config = "salt/minion"
    salt.run_highstate = true

  end

end
