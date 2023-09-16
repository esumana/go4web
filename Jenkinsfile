pipeline {
  //agent any
  // agent { label 'jenkins-kubectl' }
  agent { label 'jagent1' }
  //environment {
  //  DOCKERCREDS = credentials('JENKINS-GITHUB-INTEGRATION-USING-PRIKEY-PUBKEY')
  //}
  stages {
    //stage('Dependencies') {
    //  steps {
    //    echo 'Getting dependencies...'
    //    sh 'go get .'
    //  }
    //}
//
    //stage('Versions') {
    //  steps {
    //    echo 'Versions...'
    //    sh 'go version'
    //    sh 'docker --version'
    //  }
    //}
//
    stage('GoBuild') {
      steps {
        echo 'Building go...'
        sh 'go build -x main.go'
      }
    }

    //stage('DockerLogin') {
    //  steps {
    //    echo 'Login...'
    //    //sh 'echo $DOCKERHUB_CREDS_PWD'
    //    sh 'echo $DOCKERHUB_CREDS_USR'
    //    sh 'echo $DOCKERCREDS_PWD | docker login -u $DOCKERCREDS_USR --password-stdin'
    //  }
    //}

    stage('DockerBuild') {
      steps {
        echo 'DockerBuild...'
        //sh 'docker build -t go4web:1.0 .'
        sh 'docker build -t go4web:1.0 .'
        sh 'docker images'
      }
    }
//
    stage('DockerImagesTag') {
      steps {
        echo 'TagingImage...'
        sh 'docker tag go4web:1.0 esumana/go4web:1.1'
      }
    }
//
    stage('DockerPush') {
      steps {
        echo 'PushingImage...'
        sh 'docker push esumana/go4web:1.1'
      }
    }

    stage('Versions') {
      steps {
        echo 'Versions...'
        sh 'go version'
        sh  'docker version'
        #sh 'kubectl version'
        #sh 'docker --version'
      }
    }
  }
}
