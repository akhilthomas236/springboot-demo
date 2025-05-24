pipeline {
    agent any
    tools {
        maven 'default'
        jdk 'default'
    }
    environment {
        JAVA_HOME = '/Users/annmariyajoshy/.jenkins/tools/hudson.model.JDK/default/jdk-24.0.1.jdk'
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
