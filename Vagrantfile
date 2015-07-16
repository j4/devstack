Vagrant.configure(2) do |config|
  config.vm.box = "chef/debian-8.0"
  config.vm.provision "shell", path: "vagrant-scripts/init.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "vmware_workstation" do |v|
    v.vmx["memsize"] = "4096"
    v.vmx["numvcpus"] = "2"
  end
end