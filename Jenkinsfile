#!groovy

node('shiv') {
        def build_status = true
        stage('one') {
              //checkout scm
             
              sh '''
               
              pwd
             pwd=$?
             if [[ ${pwd} = 0 ]] ; then exit 0 ; fi
              
              '''
        }
        
        try{
        stage('two') {
            sh '''
             cat shiv.txt
            #pwd
            #  pwd=$?
             # if [[ ${pwd} = 0 ]] ; then exit 1 ; fi
            '''
                }
         } catch(Exception exp) {
        build_status = false
        println exp.getMessage()
        println exp.getCause()
        echo "Error detected, but we will continue."        
        //echo e.toString()  
    }
        
        stage('three') {
        echo "Third stage is running ...."
        echo "${currentBuild.currentResult}"
    } 
        
        
        if(build_status) {
        currentBuild.result = "SUCCESS"
    } else {
        currentBuild.result = "FAILURE"
    } 
        
      }
