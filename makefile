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
	rm *.pdf ||:
	latexmk -pdf resume.tex -halt-on-error --shell-escape
	cp resume.pdf charles-resume-$(TODAY).pdf
	latexmk -c resume.tex

# ======================================================================

# NOTE -- Looks like there's a bug in inkscape/convert/mogrify as far as
# converting SVGs, at least on an OSX kernel. Weird. Converted on
# Ubuntu, add the PDFs to the repo. 

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
