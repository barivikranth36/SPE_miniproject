pipeline {
    agent any
    stages {
        stage('Clone Git') {
            steps {
                git url: 'https://github.com/barivikranth36/SPE_miniproject.git' , branch: 'master'
            }
        }
      stage('Maven Build') {
            steps {
                sh 'mvn clean install'
            }
        }
      stage('Testing project') {
             steps {
                sh "mvn test"
             }
        }
      stage('Docker Build to Image') {
             steps {
                  sh 'docker build -t barivikranth36/spe_miniproject:latest .'
            }
        }
//       stage('Push Docker Image to Docker Hub') {
//               steps {
//                         withDockerRegistry([ credentialsId: "docker-cred", url: "" ]){
//                         sh 'docker push imshukla/calculator:latest'
//                     }
//               }
//       }
//       stage('Ansible Pull Docker Image') {
//                   steps {
//                       ansiblePlaybook becomeUser: null,
//                       colorized: true,
//                       disableHostKeyChecking: true,
//                       installation: 'Ansible',
//                       inventory: 'inventory',
//                       playbook: 'playbook.yml',
//                       sudoUser: null
//                   }
//               }
    }
}