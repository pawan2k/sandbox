#
# Cookbook Name:: hpi_app
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
remote_file '/home/ec2_user' do
  source 'https://s3.amazonaws.com/indices-assets/rpms/markit-maip-hpi-calc-1.6-11.x86_64.rpm'
  mode '0755'
 end

rpm_package 'markit-maip-hpi-calc-1.6-11.x86_64.rpm' do
  action :install
end 

execute 'Run HPI Calculator' do
  command '/etc/init.d/markit-maip-hpi-calc start'
end 