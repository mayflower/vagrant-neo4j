class neo::applydata {
  file { "/opt/neo4j/neo4j-community-2.0.1/data/graph.db":
    ensure => "directory",
    owner => "neo4j",
    group => "neo4j",
    source => "/vagrant/data/dump",
    recurse => "true";
  }
}
