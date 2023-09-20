pipeline {
  agent any
  stages {
    stage('Initialize') {
      steps {
        checkout scm
     }
    }
    stage('SSH') {
      steps {
         //ssh credentialsId: 'SSH-windows', command: 'mkdir -p /path/to/destination/directory'
            //ssh credentialsId: 'SSH-windows', host: '52.54.178.167', command:'scp -r /var/lib/jenkins/workspace/task-1 Administrator@52.54.178.167:'
            sh 'scp -r /var/lib/jenkins/workspace/task krish@192.168.56.1:/'
      }
  }
}
}
