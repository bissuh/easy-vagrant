# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :forwarded_port, guest: 9000, host: 9000
  config.vm.network :forwarded_port, guest: 35729, host: 35729

  config.vm.synced_folder "<path_to_project_folder>", "/vagrant/"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "nodejs"
  end

  # Configure everything else ready to run Yeoman
  config.vm.provision "shell", path: "provision.sh"

end
