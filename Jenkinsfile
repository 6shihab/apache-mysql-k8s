pipeline {
    agent any

    stages {
        stage('Cloning Git') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/6shihab/apache-mysql-k8s.git']])
            }
        }
        
        stage('Build Docker File'){
            steps{
                script{
                    sh 'docker build -t 6shihab/simpletodo .'
                }
            }
        }
        stage('Push To DockerHub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpass')]) {
                        sh 'docker login -u 6shihab -p ${dockerhubpass}'
                    }
                    sh 'docker push 6shihab/simpletodo'
                }
            }
        }
    }
}
