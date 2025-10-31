pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/hemalata456/jenkins-demo-project.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building...'
                sh 'echo "Building the application..."'
            }
        }

        stage('Test') { 
            steps {
                echo 'Testing...'
                sh 'echo "Running tests..."'
            }
        }

        stage('Dockerize') {
            steps {
                script {
                    echo 'Dockerizing application...'
                    sh 'echo "Creating Docker image..."'
                    // Define the docker image variable properly
                    def dockerImage = docker.build("webapp:latest")
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying application...'
                    sh 'docker run -d -p 8080:8080 webapp:latest'
                }
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed!'
        }
    }
}
