# This puppet code creates a manifest that kills a process.
# Process name 'killmenow'

# Requirements
# must use the 'exec' puppet resource
# They must use pkill

exec { 'kill':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin']
}
