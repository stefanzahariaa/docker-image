node{
    def app
    stage('Clone repository'){

          checkout scm
}
    environment {
     DOCKERHUB_credentials=credentials('dockerhub')

 }

    stage('Build image'){
      app = docker.build("loadbalancer")
  }
    stage('login'){
        
          sh 'echo $DOCKERHUB_credentials_PSW | docker login -u $DOCKERHUB_credentials_USR --password-stdin'

    }
    stage('Pushing to dockerhub'){
          sh 'docker push stefanzaharia93/loadbalancer:latest'
      }
    }

