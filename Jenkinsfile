pipeline {
  agent any
  stages {
    stage('Initialize') {
      steps {
        echo 'Starting the pipeline'
      }
    }
    stage('Build Image') {
      steps {
        echo 'Building image'
        sh 'docker build -t simple-website .'
        echo 'Build successful'
      }
    }
    
    stage('Provisioning Resources') {
      steps {
        script {
             echo 'Provisioning resources'
             sh ' cd /home/ec2-user/terra-files/'
             sh ' terraform apply'
             echo ' terraform successfull'
        }
      }
    }
    
  }
}
