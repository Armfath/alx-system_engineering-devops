# kill the process killmenow
exec { 'Killer':
  command => 'pkill killmenow',
  path    => '/usr/bin',
}

