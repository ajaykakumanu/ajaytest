 def varx='aaaaaa' 
 
def jsonObj
pipeline {
    agent any
	environment { 
        CC = 'vvvvvvvvvvvvvvvvv'
    }
    stages {
        stage('Build') {
	    steps {
	     script {
		echo "The impact is ${varx}"
                varx='bbbb'
		echo "The impact is ${varx}"
		sh 'echo ${CC}'	    
		echo 'Running build automation'
	     }
		    
		    echo "${varx}" 
	    
	    }
        }
         stage('Build Docker Image') {
		 
		 
           
            steps {
		echo 'Image starts'
		    git credentialsId: 'github_key', url: 'https://github.com/ajaykakumanu/ajaytest.git'
                script {
			
			sh 'echo ${foo}'
			
			sh 'echo ${CC}'
		        sh 'ls /opt/compose/'
			sh 'pwd'
			sh 'whoami'
			sh 'export PATH=$PATH:/opt/compose/' 	
			sh 'echo $PATH'
			sh 'echo ${CC}'
			sh '''
cat > test.env <<EOF
NODE_ENV=${CC}
PORT=1234
EOF
                   '''
                      sh '''
				export PATH=$PATH:/opt/compose/
				echo $PATH
				
		       '''
	 
		}
            }
        }
       
    }
}
