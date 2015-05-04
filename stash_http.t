Create a test file
-------------------
  $ echo "Hello World" > /home/$(whoami)/stash/public/hello
  $ md5sum /home/$(whoami)/stash/public/hello
  e59ff97941044f85df5297e1c302d260  /home/* (glob)

Curl the file to /dev/null
---------------------------
  $ curl -S -f -O http://raw.stash.osgconnect.net/+$(whoami)/hello > /dev/null 2>&1
  $ md5sum hello
  e59ff97941044f85df5297e1c302d260  hello
  $ rm hello

Remove test file
----------------
  $ rm /home/$(whoami)/stash/public/hello
