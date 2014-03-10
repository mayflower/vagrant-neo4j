class neo::service {
	
	# Resource defaults
	Exec { path => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/bin' }

	require neo::params


	exec {
		"start-neo4j":
			onlyif	=> 'service neo4j-service status | grep "not running"',
			command	=> "service neo4j-service start"
	}

	
  exec {
   "chown -R neo4j:neo4j  /opt/neo4j/neo4j-community-1.7.2/data/graph.db":
  }

}
