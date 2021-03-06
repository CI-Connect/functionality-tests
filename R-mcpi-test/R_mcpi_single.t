Verify that the tutorial can be copied 
  $ tutorial R 
  Installing R (master)...
  Tutorial files installed in ./tutorial-R.
  Running setup in ./tutorial-R...

Change directory to the tutorial directory
  $ cd tutorial-R

Copy run_and_wait script for Condor into tutorial sandbox
  $ cp "$TESTDIR/run_and_wait.sh" .

Run the job
  $ chmod +x ./run_and_wait.sh
  $ ./run_and_wait.sh R.submit 
  All jobs done.

Copy check_pi.bash script into tutorial sandbox
  $ cp "$TESTDIR/check_pi.bash" .

Check for successful R run
  $ chmod +x ./check_pi.bash
  $ cat mcpi.out.*.* > mcpi_all.out
  $ ./check_pi.bash mcpi_all.out
  pi is in range
