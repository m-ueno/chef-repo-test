p ENV
server = ENV['OPENVPN_SERVER'] ? true : nil
p [:server, server]

if server
  warn "** include recipe 'openvpn_server' **"
  include_recipe 'base::openvpn_server'
else
  include_recipe 'base::openvpn_client'
end
