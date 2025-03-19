pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS = 'Docker_cred'  // Ensure this exists in Jenkins credentials
        DOCKER_IMAGE = 'arunesh2005/simpleapplication'
    }

    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Arunesh155/DevOps.git'
            }
        }

        stage('Build Project') {
            steps {
                sh "mvn clean install"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    withDockerRegistry([credentialsId: DOCKER_CREDENTIALS, url: 'https://index.docker.io/v1/']) {
                        sh "docker push ${DOCKER_IMAGE}"
                    }
                }
            }
        }
    }
}

