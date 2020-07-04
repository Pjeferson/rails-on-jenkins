pipeline {
  agent any

  environment {
    PATH = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
  }

  stages {
    stage('Build') {
      steps {
        git 'https://github.com/Pjeferson/rails-on-jenkins'
        sh 'docker-compose build test'
        sh 'docker-compose run test bundle'
        sh 'docker-compose run test yarn'
        sh 'docker-compose run test bundle exec rails db:drop db:create db:migrate'
      }
    }
    stage('Test') {
      steps {
        sh 'docker-compose run test bundle exec rails test'
      }
    }
  }
}
