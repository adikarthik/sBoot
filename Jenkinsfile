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
                dir ('sBoot_microservice') {
                    sh 'mvn clean install'
                }
                
            }
        }
        
        stage ('test') {
            steps {
                dir ('sBoot_microservice') {
                    archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
                }
                
            }
        }
    }
}
