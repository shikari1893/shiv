#!/bin/sh

	       #FYRE_ID = $1
  	      # FYRE_TOKEN = $2
	      chmod +x scripts/shiv.sh 
              fyrelog=${fyrePath}/fyrerequest.log
              nodeNumber=1
              resourceType=VM
              chmod -R 755 scripts
              scripts/test.sh ${FYRE_ID} ${FYRE_TOKEN} ${BUILD_DISPLAY_NAME} ${resourceType} ${nodeNumber}
              fyreStat=$?
	      if [[ ${fyreStat} = 1 ]] ; then exit 1 ; fi
            
