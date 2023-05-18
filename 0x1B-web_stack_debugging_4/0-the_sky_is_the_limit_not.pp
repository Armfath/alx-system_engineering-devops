# Modify the maximun number of file allowed to be open

exec { 'fix-for-nginx':
    command => "sed -i 's/15/4096/'g /etc/default/nginx",
    path    => ['/bin', '/usr/bin'],
}
