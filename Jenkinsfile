pipeline {
  agent any

  stages {

    stage('Clone') {
      steps {
        git 'https://github.com/pr-an/org-devops-project.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t salunkhe-site .'
      }
    }

    stage('Deploy Container') {
      steps {
        sh '''
        docker stop salunkhe-container || true
        docker rm salunkhe-container || true
        docker run -d --name salunkhe-container -p 80:80 salunkhe-site
        '''
      }
    }
  }
}
