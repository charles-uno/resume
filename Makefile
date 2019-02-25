
# Charles McEachern

TODAY := `date +%Y%m%d`
IMAGE := resume-build-env
MOUNT := /sandbox

# ======================================================================

.PHONY: all
all: image resume.tex
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) $(IMAGE) make --directory=$(MOUNT) --file=$(MOUNT)/Makefile resume.pdf

# ======================================================================

.PHONY: image
image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

# ======================================================================

resume.pdf: resume.tex Makefile
	rm *.pdf ||:
	latexmk -pdf resume.tex -halt-on-error --shell-escape
	latexmk -c resume.tex

# ======================================================================

# NOTE -- Looks like there's a bug in inkscape/convert/mogrify as far as
# converting SVGs, at least on an OSX kernel. Weird. Converted on
# Ubuntu, add the PDFs to the repo.
