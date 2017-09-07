pipeline {
  agent {
        docker { image 'ruby:2.4-alpine' }
    }

  stages {
    stage('Test') {
      steps {
        sh 'apk --update --no-cache add --virtual build_deps \
  build-base ruby-dev libc-dev linux-headers \
  openssl-dev postgresql-dev libxml2-dev libxslt-dev'
        sh 'bundle install'
        sh 'bundle exec rspec'
      }
    }
  }
}
