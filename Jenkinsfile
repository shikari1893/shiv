#!groovy

node('shiv') {
        def build_ok = true
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
            pwd
              pwd=$?
              if [[ ${pwd} = 0 ]] ; then exit 1 ; fi
            '''
                }
         } catch(Exception exp) {
        //build_ok = false
        println exp.getMessage()
        println exp.getCause()
        echo "Error detected, but we will continue."        
        //echo e.toString()  
    }
        
        stage('three') {
        echo "Third stage is running ...."
    } 
        
        
        if(build_ok) {
        currentBuild.result = "SUCCESS"
    } else {
        currentBuild.result = "FAILURE"
    } 
        
      }
