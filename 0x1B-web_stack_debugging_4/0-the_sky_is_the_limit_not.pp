# Modify the maximun number of file allowed to be open

exec { 'fix-for-nginx-ulimit':
  command => 'sed -i "s/ULIMIT=\"-n.*\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx && sed -i "s/worker_connections.*/worker_connections 1024;/" /etc/nginx/nginx.conf && service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/local/bin'],
}
