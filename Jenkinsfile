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
                sh 'docker build -t helloworld .'
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
            sh 'Successfully'
        }
        failure {
            sh 'Build failed'
        }
    }
}
