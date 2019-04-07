
# Charles McEachern

TODAY := `date +%Y%m%d`
IMAGE := texlive-build-env
MOUNT := /workspace

# ----------------------------------------------------------------------

.PHONY: all image debug resume

all: resume

resume: image resume.tex
	rm *.pdf ||:
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE) make resume.pdf

resume.pdf:
	latexmk -pdf resume.tex -halt-on-error --shell-escape
	latexmk -c resume.tex

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

debug: image
	docker run --rm -it -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE)
