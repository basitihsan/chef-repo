#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.
#
package 'httpd' do
action :install
end

file '/varn/www/html/index.html' do
  content 'Now both the nodes are fully automated.No need to run chef-client inside node uffff:'
action :create
end


service 'httpd' do
action [:enable, :start]
end


 %w(httpd mariadb-server unzip giy vim) .each do |p|
package p do
action :install
end
end
