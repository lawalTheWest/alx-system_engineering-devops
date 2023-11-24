# Using the Puppet to install flask from pip3
package { 'flask':
  # ensure   => '2.1.0',
  ensure   => Installed,
  provider => 'pip3',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0'
  path    => ['/usr/bin'],
  require => Package[python3-pip],
}
