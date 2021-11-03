#!/bin/sh

              lwkcBuildTag="bldtag"
              wkcNodeLabel="$lwkcBuildTag-b${BUILD_NUMBER}-host-1"
              lwkcBuildName="wkc"
              wkcNode="$lwkcBuildName-b${BUILD_NUMBER}-host-1.fyre.ibm.com"
              jenkinsHost="https://dataconn-jenkins.swg-devops.com"
              echo "Working on ${wkcNode}"
              scripts/docker.sh root@${wkcNode}
              scripts/docker.sh ${FYRE_ID} ${FYRE_TOKEN} ${jenkinsHost} ${wkcNodeLabel}
              echo delfyreStat=$?
              if [[ "$delfyreStat" -eq 0 ]];then
              echo "successfully removed"
              else
              echo "failure"
              fi
              if [[ ${delfyreStat} = 1 ]] ; then exit 1 ; fi
              
              
              #sshpass -p ${FYRENODE_PW} ssh -o StrictHostKeyChecking=no root@${wkcNode} "chmod 755 /tmp/runSwarm.sh; /tmp/runSwarm.sh ${JENK_PASS} ${jenkinsHost} ${wkcNodeLabel} ${JENK_ID}"

              #sshpass -p ${FYRENODE_PW} scp -o StrictHostKeyChecking=no
