pipeline {
    agent any
    tools {
        maven 'default'
    }
    environment {
        JAVA_HOME = '/opt/homebrew/opt/openjdk@21/bin/java'
        PATH = "${JAVA_HOME}/bin:${env.PATH}"
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
