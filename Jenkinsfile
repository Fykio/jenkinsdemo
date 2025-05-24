pipeline {
    agent any

    stages {
        // Stage 1: Checkout code from the repository
        stage("Checkout code") {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/Fykio/jenkinsdemo.git',
                        credentialsId: 'CI_DEMO_PAT'
                    ]]
                ])
            }
        }

        // Stage 2: Package the code using Maven
        stage('Package code') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        // Stage 3: Build the Docker image
        stage('Build Docker image') {
            steps {
                sh 'docker build -t fykio/jenkinsdemo:${BUILD_ID} .'
            }
        }

        // Stage 4: Push the Docker image to the registry
        stage('Push Docker image') {
            steps {
                withDockerRegistry([
                    url: "https://index.docker.io/v1/",
                    credentialsId: "DockerHub"  ]) {
                    sh 'docker push fykio/jenkinsdemo:${BUILD_ID}'
                }
            }
        }
    }

    post {
        success {
            // Notify on success
            echo 'Pipeline succeeded!'
        }
        failure {
            // Notify on failure
            echo 'Pipeline failed!'
        }
    }
}
