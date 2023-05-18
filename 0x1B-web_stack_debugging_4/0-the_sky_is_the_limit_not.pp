# Modify the maximun number of file allowed to be open

exec { 'fix-for-nginx-ulimit':
  command => 'sed -i "s/ULIMIT=\"-n.*\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  path    => ['/bin', '/usr/bin', '/usr/local/bin'],
}

exec { 'restart':
  path    => '/usr/bin/',
  command => 'service nginx restart',
}
