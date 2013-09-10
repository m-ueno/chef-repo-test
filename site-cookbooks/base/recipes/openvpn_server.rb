%w[openvpn openssl].each do |pack|
  package pack do
    action :install
  end
end

cookbook_file "/etc/openvpn/static.key" do
  mode 00644
end

cookbook_file "/etc/openvpn/server.conf" do
  mode 00644
end

__END__

"ほんとはtemplate使うべきだけどあとまわし"
template "server.conf" do
  path "/etc/openvpn/server.conf"
  source "server.conf.erb"
  owner "root"
  group "root"
end

