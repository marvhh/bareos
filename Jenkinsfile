pipeline {
    agent {
        docker { image 'debian:stretch' }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'DEBIAN_FRONTEND=noninteractive apt-get -y install devscripts debhelper build-essential'
                sh 'dpkg-buildpackage -us -uc'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
