pipeline {
    agent any

    stages {
        stage('GetFileGithub') {
            steps {
                git branch: 'main', credentialsId: 'github-auth', url: 'git@github.com:prodiksun/jenkins.git'
            }
        }
    }
}
