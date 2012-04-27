#
# Cookbook Name:: auth
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# The basic auth directives need to be in place on the vhost
# <Location />
#   AuthType basic
#   AuthName "Private"
#   AuthUserFile /etc/apache2/passwd/passwords
#   Require valid-user
# </Location>

directory "/etc/apache2/passwd" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

cookbook_file "/etc/apache2/passwd/passwords" do
  source "passwords"
  mode "0644"
end