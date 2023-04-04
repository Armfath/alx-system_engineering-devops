package { 'nginx':
  ensure => installed,
}
file { '/etc/nginx/sites-available/default':
  content => "server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/html;
	index index.html;

	# redirection config
	location /redirect_me {
		return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
	}

	# not found page 404
	error_page 404 /custom_404.html;
	location = /custom_404.html {
		internal;
	}
}
",
}
file { '/var/www/html/index.html':
  content => 'Hello World!\n'
}
file { '/var/www/html/custom_404.html':
  content => "Ceci n'est pas une page\n"
}
