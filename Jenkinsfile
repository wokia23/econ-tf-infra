
pipeline {
    agent any

    tools {
         terraform 'Terraform'
     }

    environment {
        //Credentials for Prod environment
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') 
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Git checkout from prod branch') {
            steps {
                echo 'Cloning project codebase...'
                git branch: 'main', credentialsId: '89fb3d79-1d8c-4be4-b9ca-9d2baf557dbf', url: 'https://github.com/wokia23/econ-tf-infra.git'
                sh 'ls'
            }
        }
        
        stage('Terraform init') {
            steps {
                sh 'terraform init'
               
            }
        }
        
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform action to apply or destroy') {
            steps {
                sh 'terraform ${action} --auto-approve'
            } 
        }
        
    }

}