pipeline {
  agent {
        docker { image 'geekwire.net:5000/ruby-ci:2.4' }
    }

  stages {
    stage('Debug'){
      steps {
        sh 'pwd'
        sh "ls -l"
      }
    }
    stage('Test') {
      steps {
        sh 'bundle install'
        sh 'bundle exec rspec'
      }
    }
  }
}
