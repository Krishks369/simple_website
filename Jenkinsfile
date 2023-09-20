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
            withCredentials([sshUserPrivateKey(credentialsId: 'ssh-key', keyFileVariable: 'SSH_KEY')]) {
            sh 'scp -i $SSH_KEY -r /var/lib/jenkins/workspace/task-1 Administrator@52.203.196.89:\C:\Users\Administrator\
            }'
      }
  }
}
}
