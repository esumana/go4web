pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        sh 'go get .'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing...'
        sh 'go version'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying...'
        sh 'go run main.go'
      }
    }

  }
}