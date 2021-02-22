IMAGE := resume-build-env
MOUNT := /workdir
# Grab the name as listed in the YAML header. Drop it to lowercase and swap
# spaces for dashes.
NAME := $(shell grep name resume.md | cut -d " " -f 2- | tr '[:upper:]' '[:lower:]' | sed -e 's/ /-/g' -e 's/[^a-z\-]//g')
RESUME := $(NAME).pdf
CV := $(NAME)-cv.pdf

.PHONY: all clean cv image refresh resume

all: resume

resume: image
	rm $(RESUME) ||:
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE) pandoc resume.md --template template.tex -o $(RESUME)

cv: image
	rm $(CV) ||:
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE) pandoc cv.md --template template.tex -o $(CV)

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache

debug: image
	docker run --rm -v $(PWD):$(MOUNT) -w $(MOUNT) -it $(IMAGE)

clean:
	rm -rf *.aux *.log *.fdb* *.fls *.out ||:
