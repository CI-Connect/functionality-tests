Create a test file
-------------------
  $ echo "Hello World" > /home/$(whoami)/stash/public/hello

Curl the file to /dev/null
---------------------------
  $ curl -S -f http://raw.stash.osgconnect.net/+$(whoami)/hello > /dev/null 2>&1

Remove test file
----------------
  $ rm /home/$(whoami)/stash/public/hello
