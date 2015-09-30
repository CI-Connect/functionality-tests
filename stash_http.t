Create a test file
-------------------
  $ echo "Hello World" > /home/$(whoami)/stash/public/hello

Curl the file and md5sum it
---------------------------
  $ curl -S -f -O http://raw.stash2.ci-connect.net/+$(whoami)/hello > /dev/null 2>&1
  $ md5sum hello
  e59ff97941044f85df5297e1c302d260  hello

Remove test file
----------------
  $ rm hello
  $ rm /home/$(whoami)/stash/public/hello
