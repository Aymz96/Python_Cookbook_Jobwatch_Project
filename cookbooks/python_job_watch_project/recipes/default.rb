# Provision
# Cookbook:: python_job_watch_project
# Recipe:: default
# Copyright:: 2020, The Authors, All Rights Reserved.
remote_directory "/home/ubuntu/It_Jobs_Watch_Data_Package" do
  user 'root'
  group 'root'
  source 'It_Jobs_Watch_Data_Package'
  action :create
end

apt_update 'update_sources' do
  action :update
end

# package 'python3.8' do
#   action :install
# end

package 'python3-pip'

bash "install_requirement" do
  code <<-EOH
    sudo pip3 install -r /home/ubuntu/It_Jobs_Watch_Data_Package/requirements.txt
    EOH
end

directory "/home/vagrant/Downloads" do
  mode '0007'
  action :create
end

directory "/home/ubuntu/Downloads" do
  mode '0007'
  action :create
end



bash 'adding_keys' do
  code <<-EOH
    wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
    EOH
end

bash 'echo_deb' do
  code <<-EOH
    echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
    EOH
end

bash 'install_default_jre' do
  code <<-EOH
    sudo apt-get -y install default-jre
    EOH
end

bash 'install_default_jdk' do
  code <<-EOH
    sudo apt-get -y install default-jdk
    EOH
end

bash 'installing_jenkins' do
  code <<-EOH
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    EOH
end

bash 'sudo_jenkins' do
  code <<-EOH
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    EOH
end

bash 'apt_update' do
  code <<-EOH
    sudo apt-get update -y
    EOH
end

bash 'jenkins_install' do
  code <<-EOH
    sudo apt-get install jenkins -y
    EOH
end




# sudo pip3 install -r /home/ubuntu/It_Jobs_Watch_Data_Package/requirements.txt
#
# mkdir /home/vagrant/Downloads
#
# sudo chmod 777 Downloads

# execute 'install python3-pip' do
#   command 'sudo apt-get install python3-pip -y'
#   action :run
# end
