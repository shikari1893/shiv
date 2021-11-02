#!groovy



node('shiv') {
        def workspace = "pwd()"
        def build_status = true
        //def fyrelog=${fyrePath}/fyrerequest.log
        //currentBuild.displayName = shiv
        //def nodeNumber = 1
        
        stage('one') {
                checkout scm
                sh ''
                  
                  nodeNumber= 1
                  echo "Who I'm $SHELL"
                  chmod -R 755 scripts
                  scripts/test.sh
                  ''
                 
                 
        }
               
                   
        
        
        try{
        stage('two') {
            sh '''
            
            pwd
            #  pwd=$?
             # if [[ ${pwd} = 1 ]] ; then exit 1 ; fi
            '''
                }
         } catch(Exception exp) {
        build_status = false
        println exp.getMessage()
        println exp.getCause()
        echo "Error detected, but we will continue."        
        //echo e.toString()  
    }
        

        
        
        if(build_status) {
        currentBuild.result = "SUCCESS"
    } else {
        currentBuild.result = "FAILURE"
    } 
        
      }
