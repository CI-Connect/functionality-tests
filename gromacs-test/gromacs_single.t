Verify that the tutorial can be copied 
  $ tutorial gromacs 
  Installing gromacs (master)...
  Tutorial files installed in ./tutorial-gromacs.
  Running setup in ./tutorial-gromacs...

Change directory to the tutorial directory
  $ cd tutorial-gromacs

Copy run_and_wait script for Condor into tutorial sandbox
  $ cp "$TESTDIR/run_and_wait.sh" .

Run the job
  $ chmod +x ./run_and_wait.sh
  $ ./run_and_wait.sh gromacs_job.submit
  All jobs done.

Check for successful gromacs run
  $ tail -n 1  1cta_nvt.tpr.log | awk '{print $1}' 
  Finished
