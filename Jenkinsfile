pipeline {
    agent any

    stages {
        stage('Run Docker Compose File') {
            steps {
                sh 'sudo docker-compose build'
        		sh 'sudo docker-compose up -d'
            }
        }

        stage('PUSH image to Docker Hub') {
            steps {
                sh "docker login -u ysherian -p $DOCKER_PASS"
        		sh 'docker push ysherian/phpmysql_app'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'Deploying....'
            }
        }
    }
}
