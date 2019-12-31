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
		    git credentialsId: 'github_key', url: 'https://github.com/ajaykakumanu/ajaytest.git'
                script {
		        sh 'ls -la'
			sh 'export PATH=$PATH:/usr/local/bin/' 	
		step([$class: 'DockerComposeBuilder', dockerComposeFile: 'docker-compose.yml', option: [$class: 'StartAllServices'], useCustomDockerComposeFile: true])
			sh 'echo $PATH' 
                }
            }
        }
       
    }
}
