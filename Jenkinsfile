pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		echo "Service_PORT=${Service_PORT}"
		echo "Docker_PORT=${Docker_PORT}" 
	        echo 'Running build automation'            }
        }
         stage('Build Docker Image') {
           
            steps {
		echo 'Image starts'
                script {
		       sh 'ls -la'
                       sh 'git clone https://github.com/ajaykakumanu/ajaytest.git'
		       sh 'ls -la'
		       sh 'docker-compose build'
                }
            }
        }
       
    }
}
