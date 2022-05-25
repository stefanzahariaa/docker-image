node{
    def app
    stage('Clone repository'){

          checkout scm
}
    environment {
     USERNAME = credentials('DOCKER_USERNAME')
     PASSWORD = credentials('DOCKER_PASSWORD')

 }

    stage('Build image'){
      app = docker.build("loadbalancer")
  }
    stage('Pushing to dockerhub'){
          sh 'docker tag loadbalancer stefanzaharia93/loadbalancer'
          sh 'echo $dockerhub_PSW | docker login -u ${USERNAME} -p ${PASSWORD}'
            
          sh 'docker push stefanzaharia93/loadbalancer'
      }
    }

