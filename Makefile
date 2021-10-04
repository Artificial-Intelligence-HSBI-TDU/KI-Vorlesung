## Tools
##
## Launching tools via a Docker container: make TARGET
## Launch the tools directly:              export DOCKER=false; make TARGET
##
## By default, a custom Docker image will be used. To create this
## image, run: make create-docker-image
##
## Note: LaTeX needs to be called in the folder of the .tex file to
## be processed. In the target "$(ALGORITHM)", the variable "$<" is
## set to the current .tex file (incl. path in the working directory).
## Therefore, the working directory for the Docker container is set
## to the folder of the current .tex file. When called directly, we
## need to first change-dir to this folder.
ifneq ($(DOCKER), false)
PANDOC = docker run --rm -i -v "$(shell pwd):/data" -w "/data"          -u "$(shell id -u):$(shell id -g)" --entrypoint="pandoc" alpine-pandoc-hugo
HUGO   = docker run --rm -i -v "$(shell pwd):/data" -w "/data"          -u "$(shell id -u):$(shell id -g)" --entrypoint="hugo"   alpine-pandoc-hugo
LATEX  = docker run --rm -i -v "$(dir $(realpath $<)):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="latex"  alpine-pandoc-hugo
DOT    = docker run --rm -i -v "$(dir $(realpath $<)):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="dot"    alpine-pandoc-hugo
else
PANDOC = pandoc
HUGO   = hugo
LATEX  = cd $(dir $<) && latex
DOT    = cd $(dir $<) && dot
endif


## Data-Dir: Path to the Git submodule of Pandoc-Lecture
## Resource-Path: Where to search for bib files and other resources?
##
## Note: If Pandoc is used via a Docker container, DATADIR must be the
## working directory or a subdirectory, as the working directory will
## be mounted into the Docker container! References to a parent directory
## of the working directory therefore will not work when using a Docker
## container!
PANDOC_DIRS = --data-dir=pandoc --resource-path=".:pandoc"


## Define options for generating images from ".tex" files
LATEX_ARGS = -shell-escape


## Define options for generating images from ".dot" files
DOT_ARGS = -Tpng


## Define options to be used by Hugo
## local.yaml allows to override settings in config.yaml
HUGO_ARGS = --config config.yaml,$(wildcard local.yaml)


## Some folder and file names
ORIG_CONTENT = markdown
TMP_CONTENT  = content
PAGE         = index.md
PAGE_HTML    = $(patsubst %.md,%.html,$(PAGE))
PAGE_PDF     = $(patsubst %.md,%.pdf,$(PAGE))
PDF_FOLDER   = pdf
DOCS         = docs
RESOURCES    = resources


## Pages from which slide sets are to be created (Pandoc, LaTeX/Beamer)
## Pages which need Pandoc pre-processing before the Hugo step
##
## Use all sections and the page name, but leave out "content/" and "index.md".
## Example: "markdown/topic/subtopic/lecture/index.md" becomes "topic/subtopic/lecture"
##
## The "topic/subtopic/lecture" is also a make target for creating the lecture slides
## for this page.
SRC    =
SRC   += intro/intro-ai
SRC   += intro/problems
SRC   += search/uninformed/dfs
SRC   += search/uninformed/bfs
SRC   += search/informed/branchandbound
SRC   += search/informed/bestfirst
SRC   += search/informed/astar
SRC   += search/local/gradient
SRC   += search/local/annealing
SRC   += ea/intro
SRC   += ea/ga
SRC   += games/intro
SRC   += games/minimax
SRC   += games/heuristics
SRC   += games/alphabeta
SRC   += csp/intro
SRC   += csp/backtrackingsearch
SRC   += csp/heuristics
SRC   += csp/ac3
SRC   += dtl/mlbasics
SRC   += dtl/cal2
SRC   += dtl/pruning
SRC   += dtl/cal3
SRC   += dtl/entropy
SRC   += dtl/id3
SRC   += naivebayes/probability
SRC   += naivebayes/nb
SRC   += misc/resources
SRC   += misc/syllabus
SRC   += assignments/sheet01

## Use different file extensions so Make can distinguish these targets
SLIDES = $(patsubst %,$(TMP_CONTENT)/%/$(PAGE_PDF),$(SRC))
HTML   = $(patsubst %,$(TMP_CONTENT)/%/$(PAGE_HTML),$(SRC))


## Readings data template
READINGS = data/readings.yaml
BIBTEX   = ki.bib


## LaTeX files
## Find all ".tex" files and translate them with LaTeX to ".png"
ALGORITHM = $(patsubst $(ORIG_CONTENT)/%.tex,$(TMP_CONTENT)/%.png,$(shell find $(ORIG_CONTENT) -type f -name '*.tex'))


## DOT files
## Find all ".dot" files and translate them with Dot/Graphviz to ".png"
GRAPHS = $(patsubst $(ORIG_CONTENT)/%.dot,$(TMP_CONTENT)/%.png,$(shell find $(ORIG_CONTENT) -type f -name '*.dot'))



## Targets

## Create slides and web page
.PHONY: all
all: slides web

## Create all slides
.PHONY: slides
slides: copy_content $(ALGORITHM) $(GRAPHS) $(PDF_FOLDER) $(SLIDES)

## Create single slide set
$(SRC): copy_content $(ALGORITHM) $(GRAPHS) $(PDF_FOLDER)
$(SRC): %: $(TMP_CONTENT)/%/$(PAGE_PDF)

## Create web page
.PHONY: web
web: copy_content $(ALGORITHM) $(GRAPHS) $(READINGS) $(HTML) hugo

## Create new lecture stub based on archetype
## Use all sections and the page name, but leave out "content/" and "index.md".
## Example: "markdown/topic/subtopic/lecture/index.md" becomes "topic/subtopic/lecture"
## 1. "make new_chapter TOPIC=topic"
## 2. "make new_chapter TOPIC=topic/subtopic"
## 3. "make new_lecture-cy TOPIC=topic/subtopic/lecture"
TOPIC ?=
PHONY: new_chapter
new_chapter:
	$(HUGO) new -c "$(ORIG_CONTENT)/" -k chapter $(TOPIC)
PHONY: new_lecture-cy
new_lecture-cy:
	$(HUGO) new -c "$(ORIG_CONTENT)/" -k lecture-cy $(TOPIC)
PHONY: new_lecture-cg
new_lecture-cg:
	$(HUGO) new -c "$(ORIG_CONTENT)/" -k lecture-cg $(TOPIC)
PHONY: new_assignment
new_assignment:
	$(HUGO) new -c "$(ORIG_CONTENT)/" -k assignment $(TOPIC)

## Build Docker image "alpine-pandoc-hugo"
.PHONY: create-docker-image
create-docker-image:
	cd .github/actions/alpine-pandoc-hugo && make clean all

## Clean up
.PHONY: clean
clean:
	rm -rf $(TMP_CONTENT) $(READINGS) $(PDF_FOLDER) $(DOCS) $(RESOURCES)



## Auxiliary targets -- Do NOT call these directly!

## Copy $(ORIG_CONTENT) to $(TMP_CONTENT)
.PHONY: copy_content
copy_content:
	cp -a $(ORIG_CONTENT)/ $(TMP_CONTENT)/

## Create actual slides
## Any necessary pre-processing steps should already be done in the calling step!
$(SLIDES): %.pdf: %.md $(PDF_FOLDER)
	$(PANDOC) $(PANDOC_DIRS) -d slides $< -o $(patsubst $(TMP_CONTENT)_%,$(PDF_FOLDER)/%,$(subst _index,,$(subst /,_,$@)))

## Process stand-alone LaTeX files
$(ALGORITHM): %.png: %.tex
	$(LATEX) $(LATEX_ARGS) $(notdir $<)

## Process stand-alone Dot files
$(GRAPHS): %.png: %.dot
	$(DOT) $(DOT_ARGS) $(notdir $<) -o $(notdir $@)

## Create folder "$(PDF_FOLDER)"
$(PDF_FOLDER):
	mkdir $(PDF_FOLDER)

## Create actual website without any pre-processing
## Any necessary pre-processing steps should already be done in the calling step!
.PHONY: hugo
hugo:
	$(HUGO) $(HUGO_ARGS)

## Pre-Process Markdown using Pandoc
$(HTML): %.html: %.md
	$(PANDOC) $(PANDOC_DIRS) -d hugo $< -o $<

## Create readings data template
$(READINGS): $(BIBTEX)
	$(PANDOC) -s -f biblatex -t markdown $< -o $@
