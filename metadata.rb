name             'typo3neos'
maintainer       'Sebastiaan van Parijs'
maintainer_email 'office@refactory.it'
license          'Apache 2.0'
description      'Installs/Configures TYPO3 Neos'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


%w{
  nginx
  mysql
  database
  php
  php-fpm
  composer
  cron
}.each do |cookbook|
  depends cookbook
end