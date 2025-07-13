pipeline {
  agent any

  environment {
    IMAGE_NAME = 'java21-app'
    IMAGE_TAG = 'latest'
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/learning-devops2711/hello-world-spring-boot-docker' // Change this
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
        }
      }
    }
    
  }
}
