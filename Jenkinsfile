node{
    def app
    stage('Clone repository'){

          checkout scm
}
    environment {
     DOCKERHUB_credentials=credentials('dockerhub')
     WORKSPACE='${WORKSPACE}/database'

 }

    stage('Build image'){
      app = docker.build("database")
  }
    stage('login'){
        
          sh 'docker login -u stefanzaharia93 -p 2c5f6afe-b64a-4a7a-bd99-58f0c92a7781'

    }
    stage('Pushing to dockerhub'){
          sh 'docker push stefanzaharia93/database:latest'
      }
    }

