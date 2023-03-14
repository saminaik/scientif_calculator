pipeline {
    agent any
    
    environment {
        LANG = 'en_US.UTF-8'
    }

    stages {
        stage('Git Pull'){
            steps{
               git url: 'https://github.com/saminaik/scientif_calculator.git', branch: 'master',
//                 credentialsId:'0b70dc81-32f2-4e04-bf3b-02073a60996b'
              echo 'hello'
            }
        }
    }
    options {
        skipDefaultCheckout()
        timestamps()
    }
}
