node{
    def app
    stage('Clone repository'){

          checkout scm
}
    environment {
    registry = "stefanzaharia93/loadbalancer"
    registryCredential = 'dockerhub'
    dockerImage = ''

 }

    stage('Build image'){
      app = docker.build("loadbalancer")
  }
    stage('Pushing to dockerhub'){
          script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
      }
    }
}

