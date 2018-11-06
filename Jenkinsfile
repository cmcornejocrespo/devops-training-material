pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        echo 'checkout'
      }
    }
    stage('Build') {
      parallel {
        stage('') {
          steps {
            echo 'build'
          }
        }
        stage('iOS') {
          steps {
            echo 'test'
          }
        }
        stage('Android') {
          steps {
            echo 'java'
          }
        }
        stage('Java') {
          steps {
            echo 'efe'
          }
        }
        stage('.Net') {
          steps {
            echo 'gt'
          }
        }
        stage('PHP') {
          steps {
            echo 'gtgt'
          }
        }
      }
    }
    stage('Static Analysis') {
      parallel {
        stage('error') {
          steps {
            echo 'dede'
          }
        }
        stage('iOS') {
          steps {
            echo 'deed'
          }
        }
        stage('Android') {
          steps {
            echo 'dede'
          }
        }
        stage('Java') {
          steps {
            echo 'dedede'
          }
        }
        stage('.Net') {
          steps {
            echo 'dedde'
          }
        }
        stage('PHP') {
          steps {
            echo 'xsxs'
          }
        }
      }
    }
    stage('Deploy Nexus') {
      parallel {
        stage('error') {
          steps {
            echo 'dedede'
          }
        }
        stage('iOS') {
          steps {
            echo 'dede'
          }
        }
        stage('Android') {
          steps {
            echo 'dedede'
          }
        }
        stage('Java') {
          steps {
            echo 'cddccd'
          }
        }
        stage('.Net') {
          steps {
            echo 'cdcdcd'
          }
        }
        stage('PHP') {
          steps {
            echo 'frfr'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'frfrfr'
      }
    }
  }
}