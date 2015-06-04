Verify that the tutorial can be copied 
  $ tutorial VinaAutodock
  Installing VinaAutodock (master)...
  Tutorial files installed in ./tutorial-VinaAutodock.
  Running setup in ./tutorial-VinaAutodock...

Change directory to the tutorial directory
  $ cd tutorial-VinaAutodock 

Copy run_and_wait script for Condor into tutorial sandbox
  $ cp "$TESTDIR/run_and_wait.sh" .

Run the job
  $ chmod +x ./run_and_wait.sh
  $ ./run_and_wait.sh vina_job.submit
  All jobs done.

Check for successful vina run
  $ tail -n 1 receptor-ligand.log 
  Writing output ... done.
