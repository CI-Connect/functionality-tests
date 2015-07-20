Verify that the tutorial can be copied 
  $ tutorial AutodockVina
  Installing AutodockVina (master)...
  Tutorial files installed in ./tutorial-AutodockVina.
  Running setup in ./tutorial-AutodockVina...

Change directory to the tutorial directory
  $ cd tutorial-AutodockVina

Copy run_and_wait script for Condor into tutorial sandbox
  $ cp "$TESTDIR/run_and_wait.sh" .

Run the job
  $ chmod +x ./run_and_wait.sh
  $ ./run_and_wait.sh vina_job.submit
  All jobs done.

Check for successful vina run
  $ tail -n 1 receptor-ligand.log 
  Writing output ... done.
