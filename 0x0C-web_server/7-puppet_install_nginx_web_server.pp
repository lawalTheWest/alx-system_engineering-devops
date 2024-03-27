# Install NginX
# With puppet

# Update package lists
exec { 'apt-get-update':
  command => '/usr/bin/apt-get update',
}

# Install the nginx package
package { 'nginx':
  ensure  => installed,
  require => Exec['apt-get-update'],
}

# Create a basic HTML file
file { '/var/www/html/index.html':
  content => 'Hello World!',
  require => Package['nginx'],
}

# Add redirection rule to Nginx configuration
exec {'redirect_me':
  command  => 'sed -i "24i\     rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default',
  provider => 'shell'
}

# Ensure nginx service is running
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
