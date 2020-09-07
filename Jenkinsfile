pipeline {
    agent any

    stages {
        stage('Run Docker Compose File') {
            steps {
                sh 'docker-compose build'
        		sh 'docker-compose up -d'
            }
        }

        stage('PUSH image to Docker Hub') {
            steps {
                sh 'docker login -u ysherian -p $DOCKER_PASS'
        		sh 'docker push ysherian/phpmysql_app:apache'
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
