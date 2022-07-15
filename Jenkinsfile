pipeline {
    agent any

    stages {
        stage('GetFileGithub') {
            steps {
                git branch: 'main', credentialsId: 'github-auth', url: 'git@github.com:prodiksun/jenkins.git'
            }
        }
        stage('ExecuteScript') {
            steps {
                sh '''
                ls -la
                chmod 755 ${WORKSPACE}/GetStatusUrl.sh
                ${WORKSPACE}/GetStatusUrl.sh
                '''
                
            }
        }
        stage('SenMail') {
            steps {
                mail bcc: '', body: 'Answer from $URL - $result ', cc: '', from: '', replyTo: '', subject: 'Answer', to: 'prodik.sun@gmail.com'
            }
        }
    }
}
