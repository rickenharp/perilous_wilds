#!/usr/bin/env groovy
pipeline {
  agent {
    dockerfile {
      filename "Dockerfile.ci"
      args '-v $HOME/bundler:/usr/local/bundle'
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
