#
# Cookbook:: base_web
# Spec:: default
#
# Copyright:: (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'base_web::ubuntu' do
  context 'When all attributes are default, on Ubuntu 14.04' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
