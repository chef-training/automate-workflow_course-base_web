#
# Cookbook Name:: base_web
# Recipe:: rhel
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'yum'

package 'httpd' do
  action :install
end

service 'httpd' do
  supports status: true
  action [:enable, :start]
end
