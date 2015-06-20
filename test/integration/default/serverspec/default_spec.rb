require 'spec_helper'

describe 'chef-ingredient::default' do
  describe package('chef-server') do
    it { should be_installed }
  end

  describe command('chef-server-ctl test') do
    its(:exit_status) { should eq 0 }
  end

  describe package('manage') do
    it { should be_installed }
  end

  describe command('opscode-manage-ctl test') do
    its(:exit_status) { should eq 0 }
  end
end
