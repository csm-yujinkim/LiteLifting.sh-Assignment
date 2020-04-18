# Summary

In lecture or reading, we have we have covered pipelines, regular expressions,
grep and some other text-processing utilities.
These are the tried and true tools of any \*nix'rs day to day life.
From system administration to website development and admin, even hardcore programmers know how to bend any problem with the power of these utilities.
As a mentor once chided me:
"If you're not using pipelines, you're working too hard."
So let's get to work learning how to work :)

## Requirements, Assumptions, and Definitions

Write a script, called `LiteLifting.sh`, it will read the first command line
argument ($1) as a data file name.

`LiteLifting.sh` will process the file in several different ways based on its
contents.

Your script may not use temporary files to store intermediate results. Instead,
make correct use of pipelines.

Each result should be produced by a single pipeline invocation (see the hint
below for how to store these results into a variable).

## Hint

- To remove newline characters, these might be useful:
  - `tr -d "\n"`
  - `echo -n`
- To remove everything except for XXX, this might be useful:
  - `tr -cd "XXX"`  (you would replace XXX when the regular expression or bracket expression)
- An expensive carrot = `^$` . Used in association with grep to find empty lines
- How to set the results of a pipeline to a variable:
  - `var=$( echo "Using a pipeline" | wc -c )`
