pipeline {
    agent any
    tools {
        maven "jenkins-maven"
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/hemalata456/jenkins-demo-project.git'
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
                echo 'Dockerizing application...'
                sh 'echo "Creating Docker image..."'
                script {
                    dockerImage = docker.build('webapp')
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                sh 'docker run -d -p 8080:8080 webapp'   
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
    }
}