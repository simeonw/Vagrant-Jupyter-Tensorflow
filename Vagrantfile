# -*- mode: ruby -*-
# vi: set ft=ruby :



Vagrant.configure("2") do |config|
  # Config
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "data-science-box"

  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "TensorflowNumpy"
    # Configure resources dedicated to the VM.
    vb.gui = true
    vb.memory = 12288
    vb.cpus = 3
  end

  # Port forwarding for notebook
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  # Forward port 6006 for TensorBoard
  config.vm.network "forwarded_port", guest: 6006, host: 6006

 # config.vm.network "private_network", ip: "192.168.56.14"

  # Provisioning
  config.vm.provision :shell, path: "scripts/provision-pyenvJupyter.sh"
  config.vm.provision :shell, path: "scripts/provision-CondaPython.sh", privileged: false
  config.vm.provision :shell, path: "scripts/provision-java.sh"


  # Welcome message
  # config.vm.post_up_message = "*****************************************\n\n" \
  #                             "    Welcome to your data science box!\n\n"  \
  #                             "    To access your Jupyter Notebook\n" \
  #                             "    point your browser to:\n\n" \
  #                             "        http://localhost:8888\n\n" \
  #                             "    Have fun!\n\n" \
  #                             "*****************************************"

end

