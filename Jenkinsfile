#!groovy





node('shiv') {
        
        withCredentials([ 
           usernamePassword(credentialsId: '53c754d7-9683-4da2-8a8f-fd41b108cf78',usernameVariable: 'FYRE_ID',passwordVariable: 'FYRE_TOKEN')
          
    ]){
        def workspace = "pwd()"
        def build_status = true
        //def fyrelog=${fyrePath}/fyrerequest.log
        //currentBuild.displayName = shiv
        def nodeNumber = 1
        def fyrenodepass = '53c754d7-9683-4da2-8a8f-fd41b108cf78'
        //nodeNumber = null
        
        
        stage('one') {
                checkout scm
                //chmod +x scripts/shiv.sh
                sh "chmod +x scripts/shiv.sh"
                sh ''' scripts/shiv.sh ${FYRE_ID} ${FYRE_TOKEN} '''
                
               
                
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
