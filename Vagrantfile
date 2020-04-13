
#Vagrant.configure("2") do |config|
  # box, private network and creating alias in host file

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "chef_solo" do |chef|
  # Chef_solo allows to provisions local machine using chef cookbooks on self created servers

    chef.add_recipe "python_job_watch_project"
    # creating a path for the cookbooks project, in order for vagrant up to find the directory and start the vm

    chef.arguments = "--chef-license accept"
    # chef argument allows
  end
end

#   Vagrant.configure("2") do |config|
#
#   config.vm.box = "ubuntu/bionic64"
#
#   config.vm.provision "shell", path: "provision.sh"
#
#   # syncing a folders
#   #        .synced_folder( 'target_folder', '/destination')
#     config.vm.synced_folder 'It_Jobs_Watch_Data_Package' , '/home/ubuntu/It_Jobs_Watch_Data_Package'
#   # run bash file - povisioning instructions
#   # config.vm.provision('shell', path: 'environment/provision.sh')
#
# end
