# install nginx and custom index.page 404.html
class nginx {
  package { 'nginx':
    ensure => installed,
  }

  file { '/etc/nginx/sites-available/default':
    content => template('nginx/default.erb'),
    notify  => Service['nginx'],
  }

  file { '/var/www/html/index.html':
    content => 'Hello World!\n',
  }

  file { '/var/www/html/custom_404.html':
    content => "Ceci n'est pas une page\n",
  }

  service { 'nginx':
    ensure => running,
  }
}
