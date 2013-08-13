log_level :info

cookbook_path [File.expand_path("./site-cookbooks"), File.expand_path("./cookbooks")]
file_cache_path File.expand_path "."

http_proxy 'http://proxy.gw.nic.fujitsu.com:8080'
https_proxy 'http://proxy.gw.nic.fujitsu.com:8080'
