#!groovy



node('shiv') {
        def workspace = "pwd()"
        def build_status = true
        //def fyrelog=${fyrePath}/fyrerequest.log
        //currentBuild.displayName = shiv
        def nodeNumber = 1
        
        stage('one') {
                checkout scm
                echo "node number is ${nodeNumber}"
                env
                sh '''
                  chmod +x scripts/test.sh
                  scripts/test.sh shiv
                  
                  '''
                 
                 
        }
               
        //scripts/test.sh ${FYRE_ID} ${FYRE_TOKEN} ${BUILD_DISPLAY_NAME} ${resourceType} ${nodeNumber}           
        
        
     /*   try{
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
    } */
        
      }
