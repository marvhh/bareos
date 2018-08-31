pipeline {
    agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'fakeroot debian/rules clean'
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
