pipeline {
  agent any

  stages {
    stage('Test') {
      steps {
        sh 'bundle install'
        sh 'bundle exec rspec'
      }
    }
  }
}
