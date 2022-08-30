# Contributing to this project

One of the best things about writing and publishing a lecture online is that
people like you have the opportunity to give us feedback and ask questions or
point out typos or find other errors or ambiguities in the text.

## Questions, Bugs or Feature Requests

You are welcome to open a new issue. After clicking on the "new issue" button,
you will be offered a few issue templates. Please choose the appropriate template
or select "Open a blank issue, if the templates do not fit.

Please check first if your request is already addressed in other (open or closed)
issues. Feel free to reopen matching closed issues for this purpose to enter your
request there.

## Pull Requests

You are welcome to contribute via a pull request.

Please **open an issue** first so that your contribution can be discussed
beforehand.

Work on your contribution in a feature branch. You will probably need to fork
this repository to do this.

Submit your contribution as a pull request from your feature branch to the
`master` branch in this repository. Please make sure that your **feature
branch starts on top of the current `master` branch**.

After acceptance (i.e. merging your feature branch into the `master` branch),
your contribution is automatically subject to the licence of this repository
(CC BY-SA 4.0).

## Building Stuff

### Building via GitHub Actions

With the [GitHub workflows](.github/workflows/) defined in this repo, the slide
sets (PDF files) and the lecture notes (web pages) are automatically generated
triggered by changes to the `master` branch.

The slide sets will be provided in a branch `_slides`. The lecture notes will be
available in branch `_hugo`, where you also will find an archive named `site.zip`
containing the current version of the lecture notes.

_Notes_: The lecture notes are supposed to be deployed to `baseURL` (see
[`config.yaml`](config.yaml)).

### Building locally

You will need **[GNU Make](https://www.gnu.org/software/make/)**,
**[Docker](https://www.docker.com/)**, and a terminal with a shell.

You also need to clone the repository locally. Please be aware that this
repository uses some Git submodules that need to be initialised correctly
in your working copy. The easiest way to do so is to clone recursively,
i.e. **`git clone --recurse-submodules <repo-url> <working copy name>`**.
(You can also initialise the Git submodules in your working copy with
`git submodule init && git submodule update`.)

If not yet done, build the Docker image with **`make create-docker-image`**
once. The image itself ends up being about 800 megabytes. All Make targets
use this Docker image by default.

#### Building the Lecture Notes

Create a file **`local.yaml`** in your working copy containing a single
line

    baseURL: "file:///PATHTOWORKINGCOPY/docs/"

Compile the lecture notes with **`make web`** and open the file
**`./docs/index.html`** in your favourite browser.

_Note_: Please do not commit the file `local.yaml`.  (It is already on
`.gitignore`.)

_Note_: Use **`make clean`** to clean up all generated files.

#### Building the Slides Sets

Compile all Markdown files to slide sets using **`make slides`**. You will
find the slides in the subfolder **`./pdf/`**.

_Note_: Markdown files in subfolders containing an empty file `.noslides`
will be ignored.

_Note_: Use **`make clean`** to clean up all generated files.

## Creating new Lectures

Copy a suitable template from `.hugo/hugo-lecture/archetypes/` into the
appropriate subfolder within `markdown/`, add it to version control and start
editing the YAML header.

When creating a new subfolder, you should also provide a landing page named
`_index.md` (you could use `.hugo/hugo-lecture/archetypes/chapter.md` as
template).
