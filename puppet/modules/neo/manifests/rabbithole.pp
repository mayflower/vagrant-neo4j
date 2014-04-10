class neo::rabbithole {

	# Resource defaults
	Exec { path => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin' }

	require neo::params

        exec {
                'pull-rabbithole':
                        command => "git clone ${neo::params::rabbitholegit}",
                        cwd => $neo::params::installationdir,
                        unless => "test -d ${neo::params::installationdir}/rabbithole";
        }

        exec {
                'change-rabbithole-java':
                        require => Exec['pull-rabbithole'],
                        command => "update-java-alternatives -s java-1.7.0-openjdk-amd64";
        }

        exec {
            'compile-rabbithole':
                        require => Exec['change-rabbithole-java'],
                        command => "mvn clean install  -DskipTests",
                        cwd => "${neo::params::installationdir}/rabbithole";
        }
}
