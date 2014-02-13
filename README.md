# TYPO3 Flow Cookbook

An Opscode Chef cookbook to set up TYPO3 Flow.

## Usage

### typo3flow::default

Installs all pre-requirements for flow.

A database and database user for the TYPO3 Flow installation will be set up.

Then it will enable a nginx template to start working with TYPO3 Flow after a manual installation.

## Requirements

### Platform

Tested on Ubuntu / Debian

### Chef

Tested with Chef 10.14.2

### Cookbooks

* nginx
* mysql
* database
* php
* php-fpm
* cron
* composer

## Attributes

Will be added when cookbook is more stable.


## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `feature_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: [Sebastiaan van Parijs](http://github.com/RefactoryIt) [(@van2parijs)](http://twitter.com/van2parijs)

Based on the work from: [Ingo Renner](http://github.com/ingorenner) [(@irnnr)](http://twitter.com/irnnr)

Copyright: 2013-2014, Refactory.it

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.