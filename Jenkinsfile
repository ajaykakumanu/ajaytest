def MOCA_NAME
def MCS_NAME
def SAL_NAME
def REPORT_NAME

def XB_ARGS_DEVTOOLS
def XB_ARGS_INT
def XB_ARGS_MCS
def XB_ARGS_REFS
def XB_ARGS_AX
def XB_ARGS_SAL
def XB_ARGS_RPT
def XB_ARGS_MOCA
def XB_ARGS_MTF
def XB_ARGS_ENV
def XB_ARGS_WMD
def XB_ARGS_VOI
def XB_ARGS_WMTST
def jsontmp="wmd_testing"
def jsontmp1
def jsontmp2
def jsonObj
pipeline {
    agent any
    stages {
        stage('Build') {
	    steps {
	     script {
	        echo "The Properties string is ${env.jsonstring}"	     
		jsonObj = readJSON text: "${env.jsonstring}"
		
		     echo "11111111"	  
		     
		     jsontmp1="jsonObj."+${jsontmp}
		     
		     echo "${jsontmp1}"	  
		     
	XB_ARGS_DEVTOOLS="--"+"${jsonObj.devtools.productName}"+"-gitref "+"${jsonObj.devtools.gitBranch}"+"@"+"${jsonObj.devtools.commitHash}"+" "+"--devtools-artifact "+"${jsonObj.devtools.gitBranch}"
				XB_ARGS_INT="--"+"${jsonObj.int.productName}"+"-artifact"+" "+"${jsonObj.int.moduleName}"
				XB_ARGS_MCS="--"+"${jsonObj.mcs.productName}"+"-artifact"+" "+"${jsonObj.mcs.moduleName}"
				XB_ARGS_REFS="--"+"${jsonObj.rpweb.productName}"+"-artifact"+" "+"${jsonObj.rpweb.moduleName}"
				XB_ARGS_AX="--"+"${jsonObj.AutomatedExecution.productName}"+"-artifact"+" "+"${jsonObj.AutomatedExecution.moduleName}"
				XB_ARGS_SAL="--"+"${jsonObj.sal.productName}"+"-artifact"+" "+"${jsonObj.sal.moduleName}"
				XB_ARGS_RPT="--"+"${jsonObj.reporting.productName}"+"-artifact"+" "+"${jsonObj.reporting.moduleName}"
				XB_ARGS_MOCA="--"+"${jsonObj.moca.productName}"+"-artifact"+" "+"${jsonObj.moca.moduleName}"
				XB_ARGS_MTF="--"+"${jsonObj.mtf.productName}"+"-artifact"+" "+"${jsonObj.mtf.moduleName}"
				XB_ARGS_ENV="--"+"${jsonObj.env.productName}"+"-artifact"+" "+"${jsonObj.env.moduleName}"
				XB_ARGS_WMD="--"+"${jsonObj.dcs.productName}"+"-artifact"+" "+"${jsonObj.dcs.moduleName}"
				XB_ARGS_VOI="--"+"${jsonObj.voice.productName}"+"-artifact"+" "+"${jsonObj.voice.moduleName}"
		     
		     echo "${jsontmp1}"
		     
		     echo "-------------------------"
		     
		     XB_ARGS_WMTST="--"+"${jsonObj.${jsontmp}.productName}"+"-artifact"+" "+"${jsonObj.${jsontmp}.moduleName}"
				sh """
cat > xb.env <<EOF
XB_ARGS_DEVTOOLS=${XB_ARGS_DEVTOOLS}
XB_ARGS_INT=${XB_ARGS_INT}
XB_ARGS_MCS=${XB_ARGS_MCS}
XB_ARGS_REFS=${XB_ARGS_REFS}
XB_ARGS_AX=${XB_ARGS_AX}
XB_ARGS_SAL=${XB_ARGS_SAL}
XB_ARGS_RPT=${XB_ARGS_RPT}
XB_ARGS_MOCA=${XB_ARGS_MOCA}
XB_ARGS_ENV=${XB_ARGS_ENV}
XB_ARGS_WMD=${XB_ARGS_WMD}
XB_ARGS_WMTST=${XB_ARGS_WMTST}
EOF
                   """
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
				
		       '''
	 
		}
            }
        }
       
    }
}
