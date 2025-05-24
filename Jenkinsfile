pipeline {
    agent any

    stages {
        // Stage 1: Checkout code from the repository
        stage("Checkout code") {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: '
                ])
            }
        }
    }
}