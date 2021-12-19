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
        stage('copying .class file') {
            steps {
                sh 'cp /home/git-repos/mvn-based-project/target/mvn-project.war /home/softwares/apache-tomcat-9.0.54/webapps'
            }
        }
        stage('code deploy') {
            steps {
                sh '/home/softwares/apache-tomcat-9.0.54/bin/startup.sh'
            }
        }

    }
}

