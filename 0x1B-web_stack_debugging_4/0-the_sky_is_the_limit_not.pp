# Modify the maximun number of file allowed to be open

exec { 'fix-for-nginx-ulimit':
  path    => '/bin/',
  command => 'sed -i "s/15/4096" /etc/default/nginx',
}

exec { 'restart':
  path    => '/usr/bin/',
  command => 'service nginx restart',
}
