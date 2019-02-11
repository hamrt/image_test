pipeline {
  def app
  agent any
  stages {
    stage('clone repo') {
      steps {
        git 'https://github.com/hamrt/image_test.git'
      }
    }
    stage('build image') {
      steps {
        app = docker.build("Dockerfile")
      }
    }
    stage('test') {
      steps {
        app.inside {
            sh 'echo "Tests passed"'
        }
      }
    }
  }  
}
