
# Synopsis

A snazzy resume template, written in LaTeX! The markup is located in `resume.tex`

# Building via Docker

Open up `resume.tex` in the editor of your choice and swap out my information for yours. Then fire up your shell, navigate to this directory, and run:

```
make
```

All the dependencies will get pulled down into a Docker image. This may take a while the first time. Then it'll mount a workspace into that image, carry out the build, and spit out `resume.pdf`

# Building via GitHub

Whenever you push a commit, GitHub Actions will pick up on the change and trigger a build. This behavior is configured in `.github/workflows/build.yaml`

# Credits

Based on work by [Alex Gude](https://github.com/agude/resume).

Icons come from [FontAwesome](https://fontawesome.com/) under [CC-BY 4.0](https://fontawesome.com/license).
