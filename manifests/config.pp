class apache::config (
	String $configsource = lookup({"name" => "apache.configsource", "default_value" => ""}),
	String $configfile   = lookup({"name" => "apache.configfile", "default_vaule" => ""}),
	String $vhostsource  = lookup({"name" => "apache.vhostsource", "default_value" => ""}),
	String $vhostfile    = lookup({"name" => "apache.vhostfile", "default_value" => ""})
	) {
	file { 'config-file':
		path   => $configfile,
		ensure => file,
		source => $configsource
	}
	file { 'vhost-file':
		path    => $vhostfile,
		enusre  => file,
		content => template($vhostsource)
	}
}
