def foo = "aaaaaaa"
pipeline {
    agent any
	environment { 
        CC = 'vvvvvvvvvvvvvvvvv'
    }
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
			sh 'echo ${CC}'
		        sh 'ls /opt/compose/'
			sh 'pwd'
			sh 'whoami'
			sh 'export PATH=$PATH:/opt/compose/' 	
			sh 'echo $PATH'
			sh 'echo ${CC}'
			sh '''
			cat > outfile.txt <<EOF
				some 
				to ${CC}
				EOF
                         '''
		}
            }
        }
       
    }
}
