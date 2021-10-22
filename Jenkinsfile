node('shiv') {
        stage('one') {
              //checkout scm
              def build_ok = true
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
         } catch(e) {
        build_ok = false
        echo e.toString()  
    }
        
        stage('three') {
        sh 'time'
    } 
        
        
        if(build_ok) {
        currentBuild.result = "SUCCESS"
    } else {
        currentBuild.result = "FAILURE"
    }
        
      }
