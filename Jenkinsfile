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

        // Stage 3: Build the Docker image

        // Stage 4: Push the Docker image to the registry
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