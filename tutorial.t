Tests basic functionlity of the tutorial command
and attempts to load a tutorial
--------------------------------------------------

Run tutorial
-------------
  $ tutorial info R
  Tutorial R:
  Estimate Pi using the R programming language

Create a new tutorial to ensure backend functionality
------------------------------------------------------
  $ tutorial R
  Installing R (master)...
  Tutorial files installed in ./tutorial-R.
  Running setup in ./tutorial-R...

Delete after confirming it works
  $ rm -rf tutorial-R
