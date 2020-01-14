@Library('jenkinsci-unstashParam-library')_
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
def jsontmp="wmd-testing"
def jsontmp1
def jsontmp2
def jsonObj
pipeline {
    agent any
    stages {
        stage('Build') {
	    steps {
	     script {
		     
		      writeFile file: 'demo.xml', text: params.DEMO_YAML
		     
		     def file_in_workspace = unstashParam "file"
                     sh "cat ${file_in_workspace}"
                  
		     
		jsonObj = readJSON text: "${env.jsonstring}"
		 jsontmp2="${jsonObj."wmd-testing".productName}"
		
		 
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
		    	        XB_ARGS_WMTST="--"+"${jsonObj."wmd-testing".productName}"+"-artifact"+" "+"${jsonObj."wmd-testing".moduleName}"
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
		
               
            }
        }
       
    }
}
