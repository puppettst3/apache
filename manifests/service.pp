class apache::service (
	String $servicename = lookup({'name' => 'apache.servicename', 'default_value' => ''})
	) {
	service { 'webserver-service' :
		ensure     => running,
		name       => $servicename,
		enable     => true,
		hasrestart => true
	}
}
