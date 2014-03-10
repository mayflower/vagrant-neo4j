class neo {

	# Download Neo4j package
	class { 'neo::download': }
	->
	# Install downloaded Neo4j package
	class { 'neo::install': }
	->
	# Install Neo4j Python language bingings
	class { 'neo::python': }
	->
	# Configure Neo4j Server
	class { 'neo::configure': }
  ->
  # Load data 
  class { 'neo::applydata': }
	->
	# Start Neo4j Server
	class { 'neo::service': }
}
