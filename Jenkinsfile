pipeline{
    agent any
}
 environment {
     dockerhub=credentials('stefanzaharia93')

 }

  stage('build image')
  {
      when{
          branch "master"
          }
      steps{
          sh 'docker build -t loadbalancer'
      }
  }
  stage('pushing to dockerhub')
  {
      when{
          branch"master"
          }
      steps{
          sh 'docker tag loadbalancer stefanzaharia93/loadbalancer'
          sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
            
          sh 'docker push stefanzaharia93/loadbalancer'
      }
}
