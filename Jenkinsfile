#!groovy



node('shiv') {
        def workspace = "pwd()"
        def build_status = true
        def fyrelog=${fyrePath}/fyrerequest.log
        
        stage('one') {
              checkout scm
             
              sh ' ./test.sh -f 'John Smith' -a 25 -u john '
                        
                
                //chmod -R 755 test.sh
                        
      
              
              
                        /* status=$?
                        #if [ $status -eq 0 ]; then
                       # echo "Fyre Node Was successfully Provisioned"
                        # elif [ $status -eq 2 ]; then
                         #echo "Fyre Node Was Not successfully Provisioned"
                       # fi
               
               
              #if [[ ${status} = 1 ]] ; then exit 1 ; fi || echo " Fyre Node Was successfully Provisioned "
              #if [[ ${status} = 0 ]] ; then
              #  echo " Fyre Node Was successfully Provisioned "
             
              #else
              #  echo "Fyre Node Was Not Successfully Provisioned"
              #fi
              
              
              #pwd
             #pwd=$?
             #if [[ ${pwd} = 0 ]] ; then exit 0 ; fi */
              
              
                
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
