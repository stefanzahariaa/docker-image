node{
    def app
    stage('Clone repository'){

          checkout scm
}
    environment {
     dockerhub=credentials('stefanzaharia93')

 }

    stage('Build image'){
      app = docker.build("loadbalancer")
  }
    stage('Pushing to dockerhub'){
      when{
          branch"master"
          }
      steps{
          sh 'docker tag loadbalancer stefanzaharia93/loadbalancer'
          sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
            
          sh 'docker push stefanzaharia93/loadbalancer'
      }
    }
}
