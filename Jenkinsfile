pipeline {
    agent any
    
    environment {
        REHO = "ssh -o StrictHostKeyChecking=no ubuntu@44.202.98.0"
    }

    stages {
        stage('Stop Processors') {
            steps {
                sshagent(['ubuntu']) {
                sh ' $REHO sudo pm2 stop 0 1'
             }
            }
        }
        
        stage('Git Pull') {
            steps {
                sshagent(['ubuntu']) {
                sh ' $REHO sudo sh ./node-repo/gitPull.sh '
             }
            }
        }
        
        stage('Backend Application Setup') {
            steps {
                sshagent(['ubuntu']) {
                sh '$REHO sudo sh ./node-repo/backendSetup.sh'
             }
            }
        } 
        
        stage('Frontend Application Setup') {
            steps {
                sshagent(['ubuntu']) {
                sh '$REHO sudo sh ./node-repo/frontendSetup.sh'
             }
            }
        } 
        
        
    }
}
