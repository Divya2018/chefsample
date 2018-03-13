#
# Cookbook:: webapp1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package "httpd" do
	action :install
end

file "/var/www/html/index.html" do
	content "my first html message"
end

service "httpd" do
	action [:enable, :start]
end
