pipeline{
 agent { label "docker"}
 
 environment {
     DOCKERHUB_CREDENTIALS=credentials("docker-username")
     
 }
    
  stages {
      stage("clone"){
          steps{
              sh 'git pull https://github.com/sagarprembg/dockerpipeline.git'
          }
      }
      stage("creating ecr"){
          steps{
              sh 'aws ecr create-repository --repository nature1 --region ap-south-1'
          }
      }
      stage("build"){
          steps{
              sh 'docker build -t 009110254952.dkr.ecr.ap-south-1.amazonaws.com/nature1:latest .'
          }
      }
      stage("push"){
          steps{
              sh "docker push 009110254952.dkr.ecr.ap-south-1.amazonaws.com/nature1:latest"
          }
      }
      
  }
}
