# Installing the flask from pip3 using puppet

# Requirements:
# Install flask
# Version must be 2.1.0


# We have ensure python3 and pip3 are installed
package { 'python3':
  ensure => 'installed',
}

# pip3 istallation confirmation
package { 'python3-pip':
  ensure => 'installed',
}

# We need to install Flask using the pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => [Package['python3'], Package['python3-pip']],
}

# I am specifying the version of werkzeug to match the flask version installed.
package { 'Werkzeug':
  # ensure   => '2.0.3',
  ensure   => '2.1.1',
  provider => 'pip3',
  require  => [Package['python3'], Package['python3-pip']],
}
