## Source files of our project
METADATA               ?= ki.yaml
BOOK_SRC               ?= book.md
BUILD_DIR              ?= build
IMAGE_DARK_SUFFIX      ?= _inv

## Folder to contain the Pandoc-Lecture-Zen project tooling
PANDOC_DATA            ?= .pandoc


## Update Pandoc-Lecture-Zen dependency
update_tooling: $(PANDOC_DATA)
	cd $(PANDOC_DATA)  &&  git switch master  &&  git pull --ff-only

$(PANDOC_DATA):
	git clone --depth 1  https://github.com/cagix/pandoc-lecture-zen.git  $(PANDOC_DATA)


## Include targets from Pandoc-Lecture-Zen Makefile
-include $(PANDOC_DATA)/Makefile


## Declaration of phony targets
.PHONY: update_tooling
