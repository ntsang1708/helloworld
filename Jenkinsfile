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
                sh 'docker build -t hit-counter .'
            }
        }
        stage('Test') {
            steps {
                sh 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                sh 'Deploying...'
            }
        }
    }
    post {
        success {
            echo
        }
        failure {
            echo
        }
    }
}
