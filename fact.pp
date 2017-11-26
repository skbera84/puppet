$index_html = @(END) 
Hello Saikat! 
END
$http_service = 'httpd'

if $facts['os']['family'] == 'RedHat'{
package { 'httpd':
  	ensure => installed,
}

file { '/var/www/html/index.html':
  content => $index_html,
  notify  => Service['http_service'],
}

service { 'http_service':
	ensure => running,
	enable    => true,
  	name  	  => $http_service,

}
}
