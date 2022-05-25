node{
    def app
    stage('Clone repository'){

          checkout scm
}
    environment {
     dockerhub_credentials = credentials('dockerhub')

 }

    stage('Build image'){
      app = docker.build("loadbalancer")
  }
    stage('login'){
        
          sh 'echo $dockerhubcredentials_PSW | docker login -u $dockerhubcredentials_USR --password-stdin'

    }
    stage('Pushing to dockerhub'){
          sh 'docker push stefanzaharia93/loadbalancer:latest'
      }
    }

