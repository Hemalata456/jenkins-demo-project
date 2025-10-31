pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/hemalata456/jenkins-demo-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh '''
                    export DOCKER_BUILDKIT=0
                    docker build -t webapp .
                '''
            }
        }

        stage('Run Container') {
            steps {
                echo 'Running Docker container...'
                sh '''
                    docker rm -f webapp || true
                    docker run -d --name webapp -p 8080:80 webapp
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful! Visit http://<server-ip>:8080'
        }
        failure {
            echo '❌ Something went wrong. Check console output.'
        }
    }
}
