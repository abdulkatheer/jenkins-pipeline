pipeline {
    agent {label 'linux-slave'}
    tools {
        maven 'Maven 3'
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
                bat 'mvn clean compile'
            }
        }
        stage('StaticCodeAnalysis') {
            steps {
                bat 'mvn checkstyle:checkstyle'
            }
            post {
                always {
                    checkstyle pattern: 'target/checkstyle-result.xml'
                }
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Package') {
            steps {
                bat 'mvn package'
            }
        }
    }
}
