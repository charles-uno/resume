
# Synopsis

A snazzy resume template, written in LaTeX! The LaTeX compiler and packages are all wrapped up in a Docker container for convenience.

# Usage

Open up `resume.tex` in the editor of your choice and swap out my information for yours. Then fire up your shell, navigate to this directory, and run:

```
make
```

All the dependencies will get pulled down into a Docker image. Then it'll mount a workspace into that image, carry out the build, and spit out `resume.pdf`.

Note that the container takes a few minutes to pull together the first time. We grab `texlive-full`, which is a few gigs. This means we can use any LaTeX functionality we want. We won't run into a missing dependency, need to track down what package it's from, and re-build everything. 

# Credits

Based on work by [Alex Gude](https://github.com/agude/resume).

Icons come from [FontAwesome](https://fontawesome.com/) under [CC-BY 4.0](https://fontawesome.com/license).
