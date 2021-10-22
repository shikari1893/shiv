node('shiv') {
      withCredentials([ 
           usernamePassword(credentialsId: 'api-token',usernameVariable: 'FYRE_ID',passwordVariable: 'FYRE_TOKEN'),
            usernamePassword(credentialsId: 'iautoma1-apitoken',usernameVariable: 'JENK_ID',passwordVariable: 'JENK_PASS'),
            usernamePassword(credentialsId: fyrenodepass,usernameVariable: 'FYRENODE_USR',passwordVariable: 'FYRENODE_PW')
    ]){
        stage('provision-fyre-node') {
              checkout scm
              currentBuild.displayName = "${fyreClust}"
              sh '''
              fyrelog=${fyrePath}/fyrerequest.log
              nodeNumber=1
              resourceType=VM
              chmod -R 755 scripts
              scripts/provision-fyre.sh ${FYRE_ID} ${FYRE_TOKEN} ${BUILD_DISPLAY_NAME} ${resourceType} ${nodeNumber}
              fyreStat=$?
              if [[ ${fyreStat} = 1 ]] ; then exit 1 ; fi
              '''

        }
