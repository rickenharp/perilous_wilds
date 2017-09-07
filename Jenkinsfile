#!/usr/bin/env groovy
pipeline {
  agent {
        docker {
          image 'geekwire.net:5000/ruby-ci:2.4'
          args '-v $HOME/bundler:/usr/local/bundle'
          registryUrl 'https://geekwire.net:5000/'
          registryCredentialsId 'GeekwireDockerRepo'
        }
    }

  stages {
    stage('Bundler'){
      steps {
        sh 'bundle install'
      }
    }
    stage('Test') {
      steps {
        sh 'bundle exec rspec --format progress --format RspecJunitFormatter --out rspec.xml||true'
        junit 'rspec.xml'
      }
    }
  }
}
