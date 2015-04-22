Note: must run on osgconnect to access user's stash

Directory creation
------------------
  $ mkdir ~/stash/posix
  $ echo $?
  0

File creation
--------------
  $ echo "foo" > ~/stash/posix/test
  $ echo $?
  0

Copy files from stash
---------------------
  $ cp ~/stash/posix/test /dev/null
  $ echo $?
  0

Modify directory permissions
-----------------------------
  $ chmod 755 ~/stash/posix
  $ echo $?
  0

Modify file permissions
------------------------
  $ chmod 644 ~/stash/posix/test
  $ echo $?
  0

Read file
---------
  $ cat ~/stash/posix/test
  foo

List files
-----------
  $ ls ~/stash/posix
  test

Clean up
--------
  $ rm ~/stash/posix/test
  $ ls ~/stash/posix/test
  ls: cannot access /home/* (glob)
  [2]
  $ rmdir ~/stash/posix
  $ ls ~/stash/posix
  ls: cannot access /home/* (glob)
  [2]
