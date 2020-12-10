pipeline {

  agent any

  environment {
    SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }

  stages {

    stage('Checkout') {
      steps {
        checkout scm
        sh 'mkdir -p creds' 
        sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./creds/serviceaccount.json'
      }
    }

    stage('TF Plan') {
      steps {
        sh label: '', script: 'terraform init'  
        sh label: '', script: 'terraform plan'
      }      
    }

    stage('TF Apply') {
      steps {
        sh label: '', script: 'terraform apply --auto-approve'
      }
    }
  } 

}
