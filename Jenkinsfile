pipeline {
    agent { docker 'maven:3.3.3' }
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}