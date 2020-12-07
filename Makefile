IMAGE := resume-build-env
MOUNT := /workdir

.PHONY: all clean cv image refresh resume

all: resume

resume: image
	rm resume.pdf ||:
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) pandoc resume.md --template template.tex -o resume.pdf

cv: image
	rm cv.pdf ||:
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) $(IMAGE) pandoc cv.md --template template.tex -o cv.pdf

image: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE) --no-cache

debug: image
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) -w $(MOUNT) -it $(IMAGE)

clean:
	rm -rf *.aux *.log *.fdb* *.fls *.out ||:
