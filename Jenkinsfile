pipeline {
  //agent any
  // agent { label "jenkins-kubectl" }
  // Let"s see!
  agent { label "jagent1" }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  stages {
    //stage("Dependencies") {
    //  steps {
    //    echo "Getting dependencies..."
    //    sh "go get ."
    //  }
    //}

    //stage("Versions") {
    //  steps {
    //    echo "Versions..."
    //    sh "go version"
    //    sh "docker --version"
    //  }
    //}

    stage("GoBuild") {
      steps {
        echo "Building go..."
        sh "go build -x main.go"
      }
    }

    stage("DockerLogin") {
      steps {
        sh "echo Login..."
        //sh "echo $DOCKERHUB_CREDS_PWD"
        //sh "echo $DOCKERHUB_CREDS_USR"
        script {
          docker.withRegistry( '', $DOCKERHUB_CREDENTIALS ) {
          //dockerImage.push()
        }
        //sh('echo $DOCKERHUB_CREDENTIALS_PWD | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin')
        //sh('docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PWD')
      }
    }

    //stage("DockerBuild") {
    //  steps {
    //    echo "DockerBuild..."
    //    //sh "docker build -t go4web:1.0 ."
    //    sh "docker build -t go4web:1.2 ."
    //    sh "docker images"
    //  }
    //}
//
    //stage("DockerImagesTag") {
    //  steps {
    //    echo "TagingImage..."
    //    sh "docker tag go4web:2.0 esumana/go4web:1.2"
    //  }
    //}
//
   // stage("DockerPush") {
   //   steps {
   //     echo "PushingImage..."
   //     sh "docker push esumana/go4web:1.2"
   //   }
   // }

    stage("Versions") {
      steps {
        sh "echo Versions..."
        sh "go version"
        sh "sudo docker version"
        //sh "kubectl version"
        //sh "docker --version"
      }
    }
  }
}
