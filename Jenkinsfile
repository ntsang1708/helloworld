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
                sh 'docker --version'
                sh 'docker run -d --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins-with-docker'                
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
