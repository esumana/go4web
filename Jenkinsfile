pipeline {
  agent any
  stages {
    stage('Dependencies') {
      steps {
        echo 'Getting dependencies...'
        sh 'go get .'
      }
    }

    stage('GoVersion') {
      steps {
        echo 'Testing...'
        sh 'go version'
      }
    }

    stage('DockerVersion') {
      steps {
        sh 'docker --version'
      }
    }

    stage('GoBuild') {
      steps {
        echo 'Deploying...'
        sh 'go build -x main.go'
      }
    }

  }
}