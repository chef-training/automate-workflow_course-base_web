#
# Cookbook Name:: base_web
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

case node['platform_family']
when 'rhel'
  include_recipe "#{cookbook_name}::centos"
when 'debian'
  include_recipe "#{cookbook_name}::ubuntu"
end

package %w(curl vim) do
  action :install
end
