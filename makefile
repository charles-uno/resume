LATEXMK=latexmk

RESUME=resume
RESUME_TEX=$(RESUME).tex
RESUME_PDF=$(RESUME).pdf
HELPERS=macros.tex makefile
SUBSECTIONS := $(wildcard subsections/*tex)

all: $(RESUME_PDF)

$(RESUME_PDF): $(RESUME_TEX) $(HELPERS) $(SUBSECTIONS)
	$(LATEXMK) -pdf $(RESUME_TEX)

.PHONY: clean all tidy

# Clean up all the regeneratable files except for the final document (the .pdf)
tidy:
	$(LATEXMK) -c $(RESUME_TEX)

# Clean up all the regeneratable files, including the final document
clean:
	$(LATEXMK) -C $(RESUME_TEX)
