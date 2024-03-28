pipeline {
    agent any

    stages {
        stage('pull from git') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Selva2704/capstone.git']])
            }
        }
        stage('build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
                }
        }
        stage('deploy') {
            steps {
                 withCredentials([string(credentialsId: 'selvadev27', variable: 'dockerpwd')]) {
               sh 'docker login -u selvadev27 -p ${dockerpwd}'
                sh 'chmod +x ./deploy.sh'
                sh './deploy.sh'
                }
            }    
        }
        
    }
}
