# create www directory
directory "/var/www" do
  user node['user']['name']
  group node['group']
  mode 0755
end

# create shared directory structure for app
path = "/var/www/#{node['app']}/shared/config"
execute "mkdir -p #{path}" do
  user node['user']['name']
  group node['group']
  creates path
end

# create database.yml file
template "#{path}/database.yml" do
  source "database.yml.erb"
  mode 0640
  owner node['user']['name']
  group node['group']
end
