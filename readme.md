# Synopsis

This template uses LaTeX to create a polished resume. It's based on work by Alex Gude -- you can see his original [here](https://github.com/agude/resume) -- but has been un-over-engineered to be as simple as possible. Unnecessary packages and macros have been cut, and the directory structure has been collapsed into a single file. We are creating a one-page document, after all! 

# Quick Use

Papeeria is an online LaTeX editor. Just hit the "compile" button at the top and it'll spit out a PDF:

https://www.papeeria.com/p/61de30a2-9244-4921-aa71-0882213c36c1#/main.tex

# Prerequisites

On Linux, the following packages should be installed using `sudo apt-get install`:

```
latexmk
texlive-base
texlive-latex-extra
texlive-fonts-extra
```

Note that these packages combined take up several gigabytes. 

# Use

First, obviously, replace the contents of `resume.tex` with your own qualifications. 

To compile the LaTeX into a PDF, use (in the Linux terminal):

```
make
```

To clean up the regeneratable files (excluding the PDF), use:

```
make clean
```

