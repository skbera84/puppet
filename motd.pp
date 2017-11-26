file { '/etc/motd':
	ensure => 'file',
	content => 'Welcome to my server',
}
