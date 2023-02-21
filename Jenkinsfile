pipeline {
    agent any
    stages{
        
        stage ('clean-up') {
            steps {
                cleanWs()
            }
        }
                                
        stage ('build') {
            steps {
                dir ('sBoot') {
                    sh 'mvn clean install'
                }
                
            }
        }
        
        stage ('test') {
            steps {
                dir ('sBoot') {
                    archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
                }
                
            }
        }
    }
}
