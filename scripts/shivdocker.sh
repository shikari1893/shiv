#!/bin/sh

              lwkcBuildTag="bldtag"
              wkcNodeLabel="$lwkcBuildTag-b${BUILD_NUMBER}-host-1"
              lwkcBuildName="wkc"
              wkcNode="$lwkcBuildName-b${BUILD_NUMBER}-host-1.fyre.ibm.com"
              jenkinsHost="https://dataconn-jenkins.swg-devops.com"
              echo "Working on ${wkcNode}"
              sshpass -p ${FYRENODE_PW} scp -o StrictHostKeyChecking=no scripts/runSwarm.sh root@${wkcNode}:/tmp
              sshpass -p ${FYRENODE_PW} ssh -o StrictHostKeyChecking=no root@${wkcNode} "chmod 755 /tmp/runSwarm.sh; /tmp/runSwarm.sh ${JENK_PASS} ${jenkinsHost} ${wkcNodeLabel} ${JENK_ID}"
