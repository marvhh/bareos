pipeline {
    agent {
        docker { image 'debian:stretch' }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
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
