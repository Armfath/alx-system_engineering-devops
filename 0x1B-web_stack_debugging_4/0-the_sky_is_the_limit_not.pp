# Modify the maximun number of file allowed to be open

file_line { 'fix--for-nginx':
    path  => '/etc/default/nginx',
    line  => 'ULIMIT="-n 4096"',
    match => '^ULIMIT="-n 15"$',
}
