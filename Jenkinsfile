/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'esumana/my-go-httpserver06:go4web' } }
    stages {
        stage('build') {
            steps {
                sh 'go version'
            }
        }
    }
}