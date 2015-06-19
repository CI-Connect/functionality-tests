Verify that the tutorial can be copied 
  $ tutorial cp2k
  Installing cp2k (master)...
  Tutorial files installed in ./tutorial-cp2k.
  Running setup in ./tutorial-cp2k...

Change directory to the tutorial directory
  $ cd tutorial-cp2k

Copy run_and_wait script for Condor into tutorial sandbox
  $ cp "$TESTDIR/run_and_wait.sh" .

Run the job
  $ chmod +x ./run_and_wait.sh
  $ ./run_and_wait.sh cp2k.submit
  All jobs done.

Copy check_cp2k_energy.bash script into tutorial sandbox
  $ cp "$TESTDIR/check_cp2k_energy.bash" .

Check for successful cp2k run
  $ chmod +x ./check_cp2k_energy.bash
  $ ./check_cp2k_energy.bash  cs_cell_opt_direct_lbfgs.out
  energy is negative and in range
