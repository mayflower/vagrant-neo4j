class neo::params {
	
	case $operatingsystem {
		/(Ubuntu|Debian)/: {
			$jreinstaller = 'openjdk-7-jdk'
		}
		/(RedHat|CentOS|Fedora)/: {
			$jreinstaller = 'java-1.7.0-openjdk'
		}
	}

	$tmpdir = '/tmp'
	$baseurl = 'http://dist.neo4j.org'
	#$baseurl = 'file:////mnt/localrepo'
	$neoversion	= 'neo4j-community-2.0.1'
	$binpackage = "${neoversion}-unix.tar.gz"
	$installationdir = '/opt/neo4j'
	$neouser = 'neo4j'
	$ulimitn = '40000'
        $rabbitholegit = 'https://github.com/neo4j-contrib/rabbithole.git'
	
}
