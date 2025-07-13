pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/learning-devops2711/hello-world-spring-boot-docker'
      }
    }

    stage('List Files') {
      steps {
        sh 'ls -la'
        sh 'git rev-parse --is-inside-work-tree'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-spring-app .'
      }
    }
  }
}
