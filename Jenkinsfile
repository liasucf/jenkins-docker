pipeline {
  agent { label "linux" }
  stages {
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
