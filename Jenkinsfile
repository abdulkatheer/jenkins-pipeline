pipeline {
    agent any
    tools {
        mvn 'Maven 3'
        jdk 'Java 1.8'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/abdulkatheer/jenkins-pipeline.git'
            }
        }
        stage('Compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('StaticCodeAnalysis') {
            steps {
                sh 'mvn checkstyle:checkstyle'
            }
            post {

            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
