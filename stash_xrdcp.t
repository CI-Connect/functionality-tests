Test stash via xrdcp

make a new test file
--------------------
  $ echo "Hello XRootD" > ~/stash/xrootd-test-file

xrdcp the test file from data.ci-connect.net
---------------------------------------------
  $ xrdcp --silent root://data.ci-connect.net://user/$(whoami)/xrootd-test-file - > /dev/null

delete test file
----------------
  $ rm ~/stash/xrootd-test-file
