/* Requires the Docker Pipeline plugin */
/*pipeline {
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
}*/


node {   
    stage('Clone repository') {
        git credentialsId: 'github-creds', url: 'https://github.com/esumana/go4web.git'
    }
}    
/*    stage('Build image') {
       dockerImage = docker.build("esumana/my-go-httpserver07:go4web")
    }
    
 stage('Push image') {
        withDockerRegistry([ credentialsId: "simpsonumana-dockerhub", url: "https://hub.docker.com/" ]) {
        dockerImage.push()
        }
    }    
}*/
