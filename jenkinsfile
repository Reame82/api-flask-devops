pipeline {
    agent {
        label 'pietro'
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Mouse') {
            steps {
                echo 'Pietro Reame'
                sh 'docker pull nginx'
            }
        }
    }
}