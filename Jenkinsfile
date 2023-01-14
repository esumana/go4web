/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'esumana/my-go-httpserver06:go4web' } }
    environment {
        SERVER_CREDENTIALS = credentials('simpsonumana-dockerhub')
    }
    stages {
        stage('build') {
            environment {
                  HOME="."
                }
            steps {
                sh 'go version'
            }
        }
    }
}
