pipeline {
    agent any

    stages {
        stage('git pull') {
            steps {
                git url: 'https://github.com/saminaik/scientif_calculator.git', branch: 'main',
                credentialsId:'githubID'
            }
        }
        stage('Maven Build and Run Tests'){
            steps{
                sh "mvn clean install"
            }
        }
        stage('Image Build'){
            steps{
                sh "docker build -t saminaik/calulator:latest ."
            }
        }
          stage('Image Deploy') {
          steps {
            withCredentials([usernamePassword(credentialsId: 'dockerhub_id', usernameVariable: 'docker_username', passwordVariable: 'docker_password')]) {
              sh "echo $docker_password | docker login --username $docker_username --password-stdin"
              sh "docker push saminaik/calulator:latest"
            }
          }
        }
    }
}
