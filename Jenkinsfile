pipeline {
  agent {
        docker { image 'ruby:2.4-alpine' }
    }

  stages {
    stage('Test') {
      steps {
        sh 'bundle install'
        sh 'bundle exec rspec'
      }
    }
  }
}
