
# Synopsis

A snazzy resume template, written in LaTeX! The LaTeX compiler and packages are all wrapped up in a Docker container for convenience.

# Usage

Open up `resume.tex` in the editor of your choice and swap out my information for yours. Then hit:

```
make
```

All the dependencies will get pulled down into a Docker image. This may take a while the first time. Then it'll mount a workspace into that image, carry out the build, and spit out `resume.pdf`.

# Credits

Based on work by [Alex Gude](https://github.com/agude/resume).

Icons come from [FontAwesome](https://fontawesome.com/) under [CC-BY 4.0](https://fontawesome.com/license).
