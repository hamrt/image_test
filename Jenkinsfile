pipeline {
  agent any
  stages {
    stage('clone repo') {
      steps {
        git 'https://github.com/hamrt/image_test.git'
      }
    }
    stage('build image') {
      steps {
        build 'docker.build("Dockerfile")'
      }
    }
    stage('test') {
      steps {
        build 'app.inside { sh \'echo "Tests passed"\'}'
      }
    }
  }
}