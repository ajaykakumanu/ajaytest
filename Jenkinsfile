 def varx='aaaaaa' 

def MOCA_NAME
def MCS_NAME
def SAL_NAME
def REPORT_NAME
def jsonObj
def jsonObj1

pipeline {
    agent any
	environment { 
        CC = 'vvvvvvvvvvvvvvvvv'
    }
    stages {
        stage('Build') {
	    steps {
	     script {
	        echo "The impact is ${env.jsonstring}"	     
		jsonObj = "${env.jsonstring}"
		jsonObj1 = readJSON text: jsonObj
	        echo "${jsonObj1.moca.productName}" 
                echo "${jsonObj1.mcs.productName}"
		echo "${jsonObj1.sal.productName}"
		echo "${jsonObj1.reporting.productName}"
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
