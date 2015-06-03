Verify that the tutorial can be copied 
  $ tutorial namd 
  Installing namd (master)...
  Tutorial files installed in ./tutorial-namd.
  Running setup in ./tutorial-namd...

Change directory to the tutorial directory
  $ cd tutorial-namd

Copy run_and_wait script for Condor into tutorial sandbox
  $ cp "$TESTDIR/run_and_wait.sh" .

Copy namd configuration edit script into sandbox and run it
  $ cp "$TESTDIR/namd_conf_edit.sh" .
  $ ./namd_conf_edit.sh ubq_gbis_eq.conf

Run the job
  $ ./run_and_wait.sh namd_run.submit
  All jobs done.

Check for successful namd run
  $ tail -n 1 ubq_gbis_eq.*.log
  Program finished.
