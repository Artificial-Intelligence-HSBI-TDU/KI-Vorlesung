## Source files of our project
METADATA               ?= ki.yaml
OUTPUT_DIR             ?= _gfm

## Folder to contain the Pandoc-Lecture-Zen project tooling
PANDOC_DATA            ?= .pandoc


## Update Pandoc-Lecture-Zen dependency
update_tooling: $(PANDOC_DATA)
	cd $(PANDOC_DATA)  &&  git switch master  &&  git pull

$(PANDOC_DATA):
	git clone  git@github.com:cagix/pandoc-lecture-zen.git  $(PANDOC_DATA)


## Include targets from Pandoc-Lecture-Zen Makefile
-include $(PANDOC_DATA)/Makefile


## Declaration of phony targets
.PHONY: update_tooling
