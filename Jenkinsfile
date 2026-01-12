pipeline {
  agent any

  stages {
   
   stage('clone project test23') {
      steps {
           git branch:'master' , url:'https://github.com/SurendraBabuRN/sBoot.git'
       }
   }

   stage('clean project test') {
      steps {
           sh 'mvn clean'
       }
   }

   stage('compile') {
      steps {
           sh 'mvn compile'
       }
   }

   stage('test') {
      steps {
           sh 'mvn test'
       }
   }

   stage('build') {
      steps {
           sh 'mvn clean install'
       }
   }


  }
}
