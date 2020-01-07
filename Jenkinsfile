def MOCA_NAME
def MCS_NAME
def SAL_NAME
def REPORT_NAME
def jsonObj
pipeline {
    agent any
    stages {
        stage('Build') {
	    steps {
	     script {
	        echo "The Properties string is ${env.jsonstring}"	     
		jsonObj = readJSON text: "${env.jsonstring}"
	        echo "${jsonObj.moca.productName}" 
		MOCA_NAME="${jsonObj.moca.productName}"
                echo "${jsonObj.mcs.productName}"
		MCS_NAME="${jsonObj.mcs.productName}"
		echo "${jsonObj.sal.productName}"
		SAL_NAME="${jsonObj.sal.productName}"
		echo "${jsonObj.reporting.productName}"
		REPORT_NAME="${jsonObj.reporting.productName}"
		echo 'Running build automation'
	     }
	    }
        }
         stage('Build Docker Image') {
            steps {
		echo 'Image starts'
		    git credentialsId: 'github_key', url: 'https://github.com/ajaykakumanu/ajaytest.git'
                script {
			sh """
cat > test.env <<EOF
MOCA_NAME=${MOCA_NAME}
MCS_NAME=${MCS_NAME}
SAL_NAME=${SAL_NAME}
REPORT_NAME=${REPORT_NAME}
EOF
                   """
                      sh '''
				export PATH=$PATH:/opt/compose/
				echo $PATH
			docker-compose up	
		       '''
	 
		}
            }
        }
       
    }
}
