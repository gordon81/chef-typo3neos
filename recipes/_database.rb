#
# Author:: Sebastiaan van Parijs (<office@refactory.it>)
# Cookbook Name:: typo3neos
# Attributes:: _database
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


# define mysql connection parameters
mysql_connection_info = {
  :host     => "localhost",
  :username => "root",
  :password => node['mysql']['server_root_password']
}

# create the database
mysql_database node['typo3neos']['db']['database'] do
  connection mysql_connection_info
  action :create
end

# create database user
mysql_database_user node['typo3neos']['db']['user'] do
  connection mysql_connection_info
  password node['typo3neos']['db']['password']
  database_name node['typo3neos']['db']['database']
  privileges [:all]
  action :grant
end