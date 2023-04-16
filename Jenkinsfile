pipeline {
    agent any
    
    environment {
        REHO = "ssh -o StrictHostKeyChecking=no ubuntu@44.202.39.237"
    }

    stages {
        stage('Git Pull') {
            steps {
                sshagent(['ubuntu']) {
                sh ' $REHO sudo sh ./node-repo/gitPull.sh '
                sh ' $REHO sudo cp -Rrp node-repo/maintenance-page.html /custom/maintenance.html '
             }
            }
        }
        
        
        stage('Stop Processors') {
            steps {
                sshagent(['ubuntu']) {
                sh ' $REHO sudo pm2 stop 0 1'
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
