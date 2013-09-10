#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
if node['platform'] == "ubuntu"

  package "apache2" do
    action: upgrade
  end

  template "/etc/apache2/apache2.conf" do
    source "apache2.conf.erb"
    owner "root"
    group "root"
    mode 0644
  end

  template "/etc/apache2/ports.conf" do
    source "ports.conf.erb"
    owner "root"
    group "root"
    mode 0644
  end

  template "/etc/apache2/sites-available/proxy" do
    source "proxy.erb"  # T.B.D
    owner "root"
    group "root"
    mode 0644
  end

  link "/etc/apache2/sites-available/proxy" do
    to "/etc/apache2/sites-enabled/proxy"
  end

  service "httpd" do
    action [ :enable, :start ]
    supports :status => true, :restart => true
  end

end
