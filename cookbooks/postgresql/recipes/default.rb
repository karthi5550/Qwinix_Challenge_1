#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Adding Postgresql repo 
bash "adding postgresql repo" do
  user "root"
  code <<-EOC
  echo "deb http://apt.postgresql.org/pub/repos/apt/ #{node['postgresql']['code_name']}-pgdg main" > #{node['postgresql']['source_list']}
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
  EOC
  action :run
end

#execute apt-get update
execute "run apt-get update" do
  command 'apt-get update'
  action :run
end

#create user postgresql
execute "create user" do
  command "sudo -u postgres createuser #{node['postgresql']['user']} -s;sudo -u postgres createdb #{node['postgresql']['database_name']}"
  action :run
end

