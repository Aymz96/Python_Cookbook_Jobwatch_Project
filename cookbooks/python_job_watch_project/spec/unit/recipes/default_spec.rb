#
# Cookbook:: python_job_watch_project
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python_job_watch_project::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should update source list' do
      expect(chef_run).to update_apt_update 'update_sources'
    end

    it 'should install python3-pip' do
      expect(chef_run).to install_package 'python3-pip'
    end

    it 'should create a Downloads folder' do
     expect(chef_run).to create_directory '/home/vagrant/Downloads'
   end

   it 'should create a remote Downloads folder' do
     expect(chef_run).to create_remote_directory '/home/ubuntu/It_Jobs_Watch_Data_Package'
   end
 end
end
