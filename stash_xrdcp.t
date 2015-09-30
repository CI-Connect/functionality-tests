Test stash via xrdcp

make a new test file
--------------------
  $ echo "Hello XRootD" > ~/stash/xrootd-test-file

xrdcp the test file from data.ci-connect.net
---------------------------------------------
  $ xrdcp --silent root://data.ci-connect.net://user/$(whoami)/xrootd-test-file xrootd-test-file
  $ md5sum xrootd-test-file
  add3249ece6ca87ae1e86b323eb856c7  xrootd-test-file

delete test file
----------------
  $ rm xrootd-test-file
  $ rm ~/stash/xrootd-test-file
