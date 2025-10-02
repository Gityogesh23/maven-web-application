pipeline {
    agent any

    environment {
        NAME = "tomcat"
        DOCKER_IMAGE = "ashish-tomcat-app"
        DOCKER_CONTAINER = "ashish-container-01"
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/ashishsutar31/maven-web-application.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ashish-tomcat-app .'
            }
        }
        stage('Deploy Docker Container') {
            steps {
                sh '''
                docker rm -f $ashish-container-01 || true
                docker run --name ashish-container-01 -d -p 8081:8080 ashish-tomcat-app
                '''
  
            }
        }
    }
}
