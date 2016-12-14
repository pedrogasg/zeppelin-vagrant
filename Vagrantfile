# -*- mode: ruby -*-
# vi: set ft-ruby :

Vagrant.configure(2) do |config|
  config.vm.provision "ansible", run: "always" do |ansible|
    ansible.groups = {
     "zeppelin-with-spark" => ["zeppelin-with-spark"],
     "spark-slave" => ["spark-slave-01","spark-slave-02","spark-slave-03"]
    }
    ansible.extra_vars = { ansible_ssh_user: 'vagrant' }
    ansible.playbook = "ansible/playbook.yml"
  end
  config.vm.define "zeppelin-with-spark" do |server|
    server.vm.hostname = "zeppelin-with-spark"
    server.vm.box = "bento/centos-7.1"
    server.vm.synced_folder "./sync/zeppelin-with-spark/", "/sync"
    server.vm.provider "virtualbox" do |vm|
      vm.name = "zeppelin-with-spark"
      vm.cpus = 2
      vm.memory = 2048
    end
    server.vm.network "private_network", ip:"192.168.56.50"
  end
  config.vm.define "spark-slave-01" do |server|
    server.vm.hostname = "spark-slave-01"
    server.vm.box = "bento/centos-7.1"
    server.vm.synced_folder "./sync/slaves/", "/sync"
    server.vm.provider "virtualbox" do |vm|
      vm.name = "spark-slave-01"
      vm.cpus = 2
      vm.memory = 2048
    end
    server.vm.network "private_network", ip:"192.168.56.51"
  end
  config.vm.define "spark-slave-02" do |server|
    server.vm.hostname = "spark-slave-02"
    server.vm.box = "bento/centos-7.1"
    server.vm.synced_folder "./sync/slaves/", "/sync"
    server.vm.provider "virtualbox" do |vm|
      vm.name = "spark-slave-02"
      vm.cpus = 2
      vm.memory = 2048
    end
    server.vm.network "private_network", ip:"192.168.56.52"
  end
  config.vm.define "spark-slave-03" do |server|
    server.vm.hostname = "spark-slave-03"
    server.vm.box = "bento/centos-7.1"
    server.vm.synced_folder "./sync/slaves/", "/sync"
    server.vm.provider "virtualbox" do |vm|
      vm.name = "spark-slave-03"
      vm.cpus = 2
      vm.memory = 2048
    end
    server.vm.network "private_network", ip:"192.168.56.53"
  end
end
