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
        ssh credentialsId: 'SSH-windows	', command: 'scp -r /var/lib/jenkins/workspace/task-1 Administrator@52.54.178.167:'
    
      }
  }
}
}
