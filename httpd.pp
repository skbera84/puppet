package { httpd:
	ensure => present,
	provider => yum
}

service { 'httpd':
	ensure => running,
	enable => true
}

package { ntp:
        ensure => present,
        provider => yum
}

service { 'ntpd':
        ensure => running,
        enable => true
}

$ntp_conf = 'Managed by Puppet
server 192.168.0.3 ibrust
driftfile /var/lib/ntp/drift'

file { '/etc/ntp.conf':
	ensure => 'file',
	content => $ntp_conf
}
