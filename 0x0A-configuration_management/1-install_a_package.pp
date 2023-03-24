# check if py3 is installed and ensure that flask 1.1.4 is installed"
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

