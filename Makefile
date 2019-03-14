
# Charles McEachern

TODAY := `date +%Y%m%d`
IMAGE := resume-build-env
MOUNT := /sandbox

# ----------------------------------------------------------------------

.PHONY: all image debug resume

all: resume

resume: image
	rm *.pdf ||:
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) make resume.pdf

resume.pdf:
	latexmk -pdf resume.tex -halt-on-error --shell-escape
	latexmk -c resume.tex

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

resume.pdf: resume.tex
	rm *.pdf ||:
	latexmk -pdf resume.tex -halt-on-error --shell-escape
	latexmk -c resume.tex

# ----------------------------------------------------------------------

debug: image
	docker run -it --rm $(IMAGE)

# ----------------------------------------------------------------------

# NOTE -- Looks like there's a bug in inkscape/convert/mogrify as far as
# converting SVGs, at least on an OSX kernel. Weird. Converted on
# Ubuntu, add the PDFs to the repo.
