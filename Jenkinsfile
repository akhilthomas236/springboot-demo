pipeline {
    agent any
    tools {
        maven 'default'
        jdk 'default'
    }
    stages {
        stage('Build') {
            steps {
                withMaven(maven: 'default') {
                    sh 'mvn clean package'
                }
            }
        }
        stage('Test') {
            steps {
                withMaven(maven: 'default') {
                    sh 'mvn test'
                }
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }
}
