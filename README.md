# Synopsis

A snazzy resume template.
Work in Markdown, compile to LaTeX via [Pandoc](https://pandoc.org), spit out a PDF!

# Building via Docker

Open up `resume.md` in the editor of your choice and swap out my information for
yours. Then fire up your shell, navigate to this directory, and run:

```
make
```

All the dependencies will get pulled down into a Docker image. This may take a
while the first time. Then it'll mount a workspace into that image, carry out
the build, and spit out `resume.pdf`

# Building via GitHub

Whenever you push a commit, GitHub Actions will pick up on the change and
trigger a build. This behavior is configured in `.github/workflows/build.yaml`

# Credits

Based on work by [Alex Gude](https://github.com/agude/resume).

Icons from [FontAwesome](https://fontawesome.com/) under [CC-BY 4.0](https://fontawesome.com/license).

# Notes

Looks like there's a bug inkscape/convert/mogrify as far as converting SVGs, at
least on an macOS kernel. Weird. Converted on Ubuntu, add the PDFs to the repo.

Default LaTeX template for Pandoc:
https://github.com/jgm/pandoc-templates/blob/master/default.latex

Documentation of available variables for Pandoc:
https://pandoc.org/MANUAL.html#variables-for-latex
