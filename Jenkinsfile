pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'sudo usermod -aG docker jenkins'
                sh 'docker build -t build-helloworld .'
            }
        }
        stage('Test') {
            steps {
                sh 'Running tests...'
                // Thêm các lệnh test ở đây
            }
        }
        stage('Deploy') {
            steps {
                sh 'Deploying...'
                // Thêm các lệnh deploy ở đây
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline execution failed!'
        }
    }
}
