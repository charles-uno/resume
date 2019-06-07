
# Charles McEachern

TODAY := `date +%Y%m%d`
IMAGE := texlive-build-env
MOUNT := /workspace

# ----------------------------------------------------------------------

.PHONY: all image debug resume

all: resume

%.pdf : %.tex image
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE) latexmk -pdf $< -halt-on-error --shell-escape
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE) latexmk -c $<

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

debug: image
	docker run --rm -it -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE)
