pipeline {
    agent any

    stages {
        stage('Source Code Management') {
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
                sh 'docker build -t ashish-maven-web-app --build-arg JAR_FILE=target/maven-web-application.war .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f ashish-maven-web-container-01 || true
                docker run --name ashish-maven-web-container-01 -d -p 9090:8080 ashish-maven-web-app
                '''
            }
        }
    }
}
