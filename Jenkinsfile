  pipeline {
    agent { docker 'maven:3.3.3' }
    stages {
      stage('Checkout') {
        steps {
          git url: 'https://github.com/cmcornejocrespo/webinar-bat-desk.git', branch: 'feature/jbcnconf-2017'
        }
      }
      stage('Build') {
        steps {
          // Run the maven build
          sh 'mvn clean package'
        }
      }
      stage('Run unit tests') {
        steps {
          // Run the maven test
          sh 'mvn test'
        }
      }
      stage('Run Integration Tests') {
        steps {
          // Run integration tests
          sh 'mvn clean verify -Pintegration-tests'
        }
      }
      stage('Results') {
        steps {
          junit '**/target/surefire-reports/TEST-*.xml'
          archive 'target/*.jar'
        }
      }
    }
  }