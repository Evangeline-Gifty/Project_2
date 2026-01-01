pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git 'evangelinegiftyy'
      }
    }

    stage('Build Image') {
      steps {
        sh 'docker build -t evangelinegiftyy/trend-app:latest .'
      }
    }

    stage('Push Image') {
      steps {
        sh 'docker push evangelinegiftyy/trend-app:latest'
      }
    }

    stage('Deploy to EKS') {
      steps {
        sh 'kubectl apply -f deployment.yaml'
        sh 'kubectl apply -f service.yaml'
      }
    }
  }
}
