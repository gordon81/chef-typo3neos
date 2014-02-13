#
# Author:: Sebastiaan van Parijs (<office@refactory.it>)
# Cookbook Name:: typo3flow
# Attributes:: default
#
# Copyright 2014, Sebastiaan van Parijs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "nginx"
include_recipe "mysql::server"
include_recipe "database::mysql"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "php::module_apc"
include_recipe "php::module_gd"
include_recipe "php-fpm"
include_recipe "composer"

# ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

include_recipe "typo3flow::_database"
include_recipe "typo3flow::_config"

# create TYPO3 Flow web app
Chef::Log.info "Setting up TYPO3 Flow Project \"#{node['typo3flow']['site_name']}\""
template "generic_flow" do
  path "#{node['nginx']['dir']}/sites-available/generic_flow"
  source "generic_template.erb"
  owner "root"
  group "root"
  mode 00755
end

nginx_site "generic_flow" do
	enable true
end

service "nginx" do
  action :reload
end