This is a modification of the basic unit test, directed at CoreOS
--------------------------------------------------------------

Create a simple job file
------------------------
  $ echo -e ' universe = vanilla \n output=job.output \n error=job.error \n log=job.log \n executable = /bin/echo \n arguments = hello world \n requirements = (GLIDEIN_Site == "MWT2-COREOS") \n  queue' > submit_file

Copy some extra utilities to the unit test directory
----------------------------------------------------
  $ cp "${TESTDIR}/run_and_wait.sh" .

Run the unit test
-----------------
  $ ./run_and_wait.sh submit_file
  All jobs done.
