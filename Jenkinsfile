#!/usr/bin/env groovy
pipeline {
  agent {
    dockerfile {
      filename "Dockerfile.ci"
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
