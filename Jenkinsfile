pipeline {
  agent { label "linux" }
  stages {
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }
    stage("build") {
      steps {
        sh """
          docker build -t test .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run -it -p 8501:8501 test
        """
      }
    }
  }
}
