pipeline {
    agent any

    stages {
        stage('code pull') {
            steps {
                git branch: 'feature', url: 'https://github.com/shaikismailzabiulla/drepo.git'
            }
        }
        stage('code build') {
            steps {
                sh 'mvn install'
            }
        }
    }
}

