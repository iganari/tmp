Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-6.7"
  config.vm.hostname = "node01"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision 'shell', inline: "chmod 644 /home/vagrant/.ssh/authorized_keys    "
  config.omnibus.chef_version = "12.13.37"
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "./site-cookbooks"
    chef.run_list = %w[
      recipe[apache]
      recipe[mysql]
    ]
  end
end
