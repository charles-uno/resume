IMAGE := resume-build-env
MOUNT := /workdir
# Grab the name as listed in the YAML header. Drop it to lowercase and swap
# spaces for dashes.
NAME := $(shell grep name resume.md | cut -d " " -f 2- | tr '[:upper:]' '[:lower:]' | sed -e 's/ /-/g' -e 's/[^a-z\-]//g')
RESUME := $(NAME).pdf
CV := $(NAME)-cv.pdf

FLAGS := --rm -v $(PWD):$(MOUNT) -w $(MOUNT) $(IMAGE)

.PHONY: all clean cv debug image refresh resume wip

all: resume

resume: image
	rm $(RESUME) ||:
	docker run $(FLAGS) pandoc resume.md --template template.tex -o $(RESUME)

wip: image
	docker run $(FLAGS) pandoc resume.md --template template.tex -o $(NAME).tex
	docker run $(FLAGS) pandoc resume.md -o $(NAME).html

cv: image
	rm $(CV) ||:
	docker run $(FLAGS) pandoc cv.md --template template.tex -o $(CV)

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache

debug: image
	docker run -it $(FLAGS)

clean:
	rm -rf *.aux *.log *.fdb* *.fls *.out ||:
