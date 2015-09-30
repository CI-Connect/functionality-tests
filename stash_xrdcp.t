Test stash via xrdcp

make a new test file
--------------------
  $ echo "Hello XRootD" > /stash2/user/$(whoami)/xrootd-test-file

xrdcp the test file from data.ci-connect.net
---------------------------------------------
  $ xrdcp --silent root://data.ci-connect.net://user/$(whoami)/xrootd-test-file xrootd-test-file
  $ md5sum xrootd-test-file
  903f6bf242214472dea589b6b9a1b3e5  xrootd-test-file

delete test file
----------------
  $ rm xrootd-test-file
  $ rm ~/stash/xrootd-test-file
