Vagrant.configure("2") do |config|

    config.vm.box = "diazdavid"

    config.vm.box = "ubuntu/precise64"

    # config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true

    config.vm.network "private_network", ip: "192.168.50.2"


    config.vm.provider "virtualbox" do |v|
        v.name = "Diaz Ubuntu 12.04 php 5.3"
        v.customize ["modifyvm", :id, "--memory", "512"]
    end

    config.vm.synced_folder "provision/vhosts", "/etc/apache2/vhosts", create: true
    config.vm.synced_folder "/Users/daviddiazgarcia/Documents/Projects", "/var/www", create: true, group: "www-data", owner: "www-data"

    config.vm.provision :shell, :path => "provision/setup.sh"
    config.vm.provision :shell, :path => "provision/hosts.sh"
    config.vm.provision :shell, :path => "provision/xdebug.sh"

end