# Charles McEachern
# Fall 2015

TODAY := `date +%Y%m%d`

# ======================================================================

IMAGE := resume-build-env
MOUNT := /resume-mount

docker: Dockerfile resume.tex
	docker build . -f Dockerfile -t $(IMAGE)
	docker run --rm --mount type=bind,source=$(PWD),target=$(MOUNT) $(IMAGE) make --directory=$(MOUNT) --file=$(MOUNT)/makefile resume.pdf

.PHONY: container
container: Dockerfile
	docker build . -f Dockerfile -t $(IMAGE)

# ======================================================================

resume.pdf: resume.tex makefile
	latexmk -pdf resume.tex -halt-on-error --shell-escape
	mv resume.pdf charles-resume-$(TODAY).pdf
	latexmk -c resume.tex

# ======================================================================

# NOTE -- Looks like there's a bug in the inkscape/convert commands in the containers. So let's pack up some PNGs or PDFs into the repo.

#.PHONY: icons
#ICONS := $(patsubst %.svg,%,$(wildcard icons/*.svg))

#icons:
#	$(foreach ICON,$(ICONS),inkscape -f $(ICON).svg -e $(ICON).png;)
#	$(foreach ICON,$(ICONS),convert $(ICON).svg $(ICON).png;)
#	mogrify -format png *.svg

# ======================================================================

clean:
	latexmk -c resume.tex
	@-rm *~ > /dev/null ||:
