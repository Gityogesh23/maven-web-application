// This Jenkinsfile defines a standard CI/CD process for a Java Maven web application,
// including compilation, packaging, Docker image creation, and container deployment.

pipeline {

    // 1. Agent: Run on any available Jenkins agent
    agent any

    stages {

        // --- Stage 1: Source Code Checkout ---
        stage('Source Code Management') {
            steps {
                // Check out the code from the specified Git repository and branch
                git branch: 'master',
                    url: 'https://github.com/Gityogesh23/maven-web-application.git'
            }
        }

        // --- Stage 2: Build and Package the Application ---
        stage('Build with Maven') {
            steps {
                // Execute Maven to clean up previous builds and create the WAR package
                sh 'mvn clean package'
            }
        }
/*
        --- Stage 3: Build Docker Image ---
        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile in the current directory (.),
                // passing the generated WAR file as a build argument.
                // NOTE: This requires the Jenkins user to have permission to access the Docker daemon socket.
                sh 'docker build -t yogesh-tomcat-web-app --build-arg JAR_FILE=target/maven-web-application.war .'
            }
        }

        // --- Stage 4: Deploy and Run Container ---
        stage('Run Docker Container') {
            steps {
                sh '''
                # Remove the container if it already exists (|| true prevents job failure if it doesn't exist)
                docker rm -f yogesh-maven-cont01 || true

                # Run the new container in detached mode (-d), mapping host port 8081 to container port 8080
                docker run --name yogesh-maven-cont01 -d -p 8081:8080 yogesh-tomcat-web-app
                '''
            }
        }
*/
    }
}
