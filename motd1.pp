file { 'Message File':
	ensure => 'file',
	path => '/etc/motd',
	content => 'Welcome to my Server'
}
