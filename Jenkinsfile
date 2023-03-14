pipeline {
    agent any

    stages {
        stage('git pull') {
            steps {
                git url: 'https://github.com/saminaik/scientif_calculator.git', branch: 'master',
                credentialsId:'githubID'
            }
        }
        stage('Maven Build and Run Tests'){
            steps{
                sh "mvn clean install"
            }
        }   
    }
}
