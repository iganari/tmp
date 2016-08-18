#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
pachage "mysql-server" do
  action :install
end

service "mysqld" do
  action [ :enable, :start ]
end
