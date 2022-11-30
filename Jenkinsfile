/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'my-go-httpserver06' } }
    stages {
        stage('build') {
            steps {
                sh 'go version'
            }
        }
    }
}