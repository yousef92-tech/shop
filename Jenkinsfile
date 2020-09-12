pipeline {
    agent any

    stages {
        stage('build docker images and push to dockerhub') {
            steps {
                sh 'docker login -u ysherian -p $DOCKER_PASS'
                sh 'docker build -t ysherian/repo99:'
            }
        }
        
        //the deploy stage is still work in progress. needs become password(vault) configured
     
        stage('Deploy') {
            steps {
                sh 'ansible-playbook first.yml --ask-vault-pass $VAULT_PASS'
                sh 'Pipeline Done'
            }
        }
    }
}
