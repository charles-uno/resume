IMAGE := resume-build-env
MOUNT := /workdir

.PHONY: all image refresh resume

all: resume.pdf

resume: image
	rm *.pdf ||:
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) latexmk -pdf resume.tex -halt-on-error --shell-escape

clean: image
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) latexmk -c resume.tex

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache
