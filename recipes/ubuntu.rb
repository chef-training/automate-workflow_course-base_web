#
# Cookbook:: base_web
# Recipe:: ubuntu
#
# Copyright:: (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'

package 'apache2' do
  action :install
end

service 'apache2' do
  supports status: true
  action [:enable, :restart]
end
