# This file is written to create a puppet file that creates a file
# The file path is '/tmp/school'
# The file permission is '0744'
# The file owner is 'www-data'
# The file group is 'www-data'
# the file conytents 'I love Puppet'


file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
