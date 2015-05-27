#!/bin/bash

if [ "$#" -ne 1 ]
  then echo "Usage: run_and_wait [job submit file]"
  exit
fi

# $1 = submit file name
CLUSTER_ID=$(condor_submit $1 | tail -n1 | rev | cut -d' ' -f1 | rev)

LOG_FILE=$(condor_q -format '%s\n' UserLog $CLUSTER_ID | tail -n1)

condor_wait $LOG_FILE $CLUSTER_ID
