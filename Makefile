IMAGE := resume-build-env
MOUNT := /workdir

.PHONY: all image refresh resume

all: resume

resume: image
	rm *.pdf ||:
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) pandoc resume.md --template template.tex -o resume.pdf

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache

debug: image
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) -it $(IMAGE)
