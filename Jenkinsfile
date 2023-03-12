pipeline{
 agent { label "docker"}
 
 environment {
     DOCKERHUB_CREDENTIALS=credentials("docker-username")
     
 }
    
  stages {
      stage("clone"){
          steps{
              sh 'git clone https://github.com/sagarprembg/dockerpipeline.git'
          }
      }
      stage("build"){
          steps{
              sh 'docker build -t premsagarbg/nature:latest .'
          }
      }
      stage("login"){
          steps{
              sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
          }
      }
      stage("push"){
          steps{
              sh "docker push premsagarbg/nature:latest"
          }
      }
      
  }
  post {
      always{
          sh 'docker logout'
      }
      
  }
}
