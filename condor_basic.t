Basic functionality tests

This test should only run the simplest "hello world"
via Condor to see that batch submissions are working 
correctly. 
----------------------------------------------------

Create a simple job file
------------------------
  $ echo -e " universe = vanilla \n output=job.output \n error=job.error \n log=job.log \n executable = /bin/echo \n arguments = hello world \n queue" > submit_file

Copy some extra utilities to the unit test directory
----------------------------------------------------
  $ cp ${TESTDIR}/run_and_wait.sh .

Run the unit test
-----------------
  $ ./run_and_wait.sh submit_file
  All jobs done.
