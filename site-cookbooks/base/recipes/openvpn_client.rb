%w[openvpn openssl].each do |pack|
  package pack do
    action :install
  end
end

cookbook_file "/etc/openvpn/static.key" do
  mode 00644
end

cookbook_file "/etc/openvpn/client.conf" do
  mode 00644
end

__END__
