pipeline {
    agent any

    stages {
        stage('code pull') {
            steps {
                git branch: 'main', url: 'https://github.com/shaikismailzabiulla/mvn-based-project.git'
            }
        }
        stage('code build') {
            steps {
                sh 'mvn install'
            }
        }
    }
}

