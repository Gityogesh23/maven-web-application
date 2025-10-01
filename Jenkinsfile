pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/himanshitekade/maven-web-application.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deploy to Tomcat') {
            steps {
                sh 'cp /var/lib/jenkins/workspace/Maven-Web-Project-Pipeline/target/maven-web-application.war /opt/apache-tomcat-9.0.109/webapps/'
            }
        }
    }
}
