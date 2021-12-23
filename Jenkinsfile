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
        stage('code copying') {
            steps {
                sh 'cp /home/coderr/mvn-based-project/target/mvn-project.war /home/coderr/shell-script/apache-tomcat-9.0.54/webapps'
            }
        }
        stage('tomcat started') {
            steps {
                sh '/home/coderr/shell-script/apache-tomcat-9.0.54/bin/startup.sh'
            }
        }

    }
}

