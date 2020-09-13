pipeline {
    agent any

    stages {
        stage('build docker images and push to dockerhub') {
            steps {
                sh 'docker login -u ysherian -p $DOCKER_PASS'
                sh 'docker build -t ysherian/repo99:php_app_image'
                sh 'docker push ysherian/repo99:php_app_image'
            }
        }
             
        stage('Deploy') {
            steps {
                sh 'ansible-playbook first.yml --ask-vault-pass $VAULT_PASS'
                echo 'Pipeline Done'
            }
        }
    }
}
