#!groovy





node('shiv') {
        
        withCredentials([ 
           usernamePassword(credentialsId: 'api-token',usernameVariable: 'FYRE_ID',passwordVariable: 'FYRE_TOKEN'),
            usernamePassword(credentialsId: 'iautoma1-apitoken',usernameVariable: 'JENK_ID',passwordVariable: 'JENK_PASS'),
            usernamePassword(credentialsId: fyrenodepass,usernameVariable: 'FYRENODE_USR',passwordVariable: 'FYRENODE_PW')
    ]){
        def workspace = "pwd()"
        def build_status = true
        //def fyrelog=${fyrePath}/fyrerequest.log
        //currentBuild.displayName = shiv
        def nodeNumber = 1
        //nodeNumber = null
        
        
        stage('one') {
                checkout scm
                env
                echo "$FYRE_ID"
                sh '''
  
                  chmod +x scripts/shiv.sh ${FYRE_ID} ${FYRE_TOKEN}
                  
                  scripts/shiv.sh
                
                 
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
}
