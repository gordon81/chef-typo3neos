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

default['nginx']['default_site_enabled']   = false

# General settings
default['typo3flow']['db']['database'] = "flow-projectdb"
default['typo3flow']['db']['user'] = "flowuser"
default['typo3flow']['db']['password'] = "flowpassword"

default['typo3flow']['server_name'] = [node['fqdn']]
default['typo3flow']['server_aliases'] = []

default['typo3flow']['context'] = 'Development'
default['typo3flow']['environment'] = 'dev'