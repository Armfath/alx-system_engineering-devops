# Increase the request limit in nginx configuration
exec { 'upgrade':
  path    => '/bin/',
  command => 'sed -i "s/15/4096" /etc/default/nginx',
}

# Restart the nginx service after making changes
exec { 'restart':
  path    => '/usr/bin/',
  command => 'service nginx restart',
}
