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

Please **open an issue first** so that your contribution can be discussed
beforehand.

Then create a new feature branch starting from the `master` branch and submit
your contribution to it with a pull request from your feature branch to the
`master` branch in this repo. Please make sure that your **feature branch starts
from the top of the current `master` branch**.

Except for team members who can create new feature branches directly in this
repo, you will need to fork the repo and work on your contribution in a feature
branch there.

Please note that after acceptance (i.e. merging the feature branch into the
`master` branch) your contribution is automatically subject to the licence of
this repository (CC BY-SA 4.0).

## Building Stuff

With the [GitHub workflows](.github/workflows/) defined in this repo, all slide
sets (PDF files) and the web pages are automatically generated and the GitHub
page is updated when changes are made on the `master` branch. The slide sets
will be provided as a downloadable artefact to team members.

In a pull request, the **name of the feature branch** is used to determine the
**corresponding slide set** and to automatically create a PDF file when changes
are made to this feature branch. This requires the feature branch to be named
*exactly* like the page to be compiled as a slide set.

Example: The **lesson `wuppie/fluppie/foo/index.md`** in the folder `markdown/`
would have **`wuppie/fluppie/foo` as name** for the feature branch. This string
must also be added to the variable `SRC` in the [`Makefile`](Makefile).

The slide set will be available as a downloadable artefact.

Both [workflows](.github/workflows/) can also be triggered manually by team
members on any branches. Please keep in mind that the GitHub page and thus
the material for the students is also updated when the web pages are created.
It would probably be a good idea to run your tests in isolation, i.e. in a fork
or locally :)

### Prerequisites (for lokal builds)

You have the choice between an *easy route* (Docker) and a *scenic route*
(native installation of the tools). In both cases you will need
**[GNU Make](https://www.gnu.org/software/make/)** and a terminal with a shell.

You also need to clone the repository locally. Please be aware that this
repository uses some Git submodules that need to be initialised correctly in
your working copy. The easiest way to clone this repo is to clone recursively,
i.e. **`git clone --recurse-submodules <repo-url> <working copy name>`**.
(You can also initialise the Git submodules in your working copy with
`git submodule init && git submodule update`.)

You will probably have the best experience if you work with a unixoid operating
system, even though the [`Makefile`](Makefile) and Docker should also work under
Windows (well, not tested yet).

#### Easy Route: Using Docker

Install **[Docker](https://www.docker.com/)** and then build the Docker image
with **`make create-docker-image`** once.

The image is based on [Pandoc Dockerfiles](https://github.com/pandoc/dockerfiles)
(specifically `pandoc/latex`), which is downloaded first. So you need an internet
connection and several hundred megabytes will be downloaded. The image itself ends
up being about 800 megabytes.

All Make targets use this Docker image by default.

#### Scenic Route: Installing and maintaining all tools locally

You will need the following tools in a current version:

*   [Pandoc](https://github.com/jgm/pandoc)
*   [TeX Live](http://tug.org/texlive/)
*   [Beamer](https://github.com/josephwright/beamer)
*   [Metropolis](https://github.com/matze/mtheme)
*   Several LaTeX packages, cf.
    [`.github/actions/alpine-pandoc-hugo/install-packages.sh`](.github/actions/alpine-pandoc-hugo/install-packages.sh)
*   [Hugo](https://github.com/gohugoio/hugo)

To use these natively installed tools in the Make targets, set the environment
variable `DOCKER=false`. Example: `export DOCKER=false; make TARGET`.

### Building the website locally

Create the file **`local.yaml`** in your working copy, which contains a single
line

    baseURL: "file:///pathToWorkingCopy/docs/"

Then you can compile the website with **`make web`** and check the result in the
browser. Just open the file **`docs/index.html`** in your favourite browser ...

*Note*: Please do not commit the file `local.yaml`.  (It is already on
`.gitignore`.)

*Note*: Use **`make clean`** to clean up all generated files.

### Building the slides locally

With **`make slides`** all pages configured as slide source in the
[`Makefile`](Makefile) are compiled to PDF files. You will find the slides in
the subfolder `pdf/`.

You can add (or remove) further pages that are to be compiled into a PDF slide
set to/from the variable `SRC` in the [`Makefile`](Makefile). The
lesson **`wuppie/fluppie/foo/index.md`** in the folder `markdown/` would become
**`wuppie/fluppie/foo`** to be added to `SRC` in the [`Makefile`](Makefile).

Use **`make wuppie/fluppie/foo`** to build the slide set for just the
`wuppie/fluppie/foo` page.

*Note*: Use **`make clean`** to clean up all generated files.

## Creating new lectures

Suppose you want to create a new lecture `foo`, which belongs into the (sub-)
chapters `wuppie/fluppie/`. Also, in the folder `markdown/` the top level chapter
already exists as a subfolder, i.e. `markdown/wuppie/` already exists.

If you want to use the automatic build for the new lectures slides on GitHub, you
should do the next steps in a **feature branch `wuppie/fluppie/foo`**. If you
also open a pull request on GitHub, the slides for the new lecture will be built
each time you push into the feature branch. The slides can be downloaded from
GitHub as a build artefact for one day.

### Creating new subchapters

You need first to create the new subchapter `fluppie` inside chapter `wuppie`:
**`make new_chapter TOPIC=wuppie/fluppie`**.

Please note that the folder `markdown/` is omitted here.

Don't forget to adjust the "landing page" in this new subchapter, i.e. the file
**`markdown/wuppie/fluppie/_index.md`**. In particular, the YAML variables
**`title`** and **`weight`** should be checked and adjusted. (The `weight`
determines the ordering of the new subchapter within the chapter `wuppie` in the
menu on the left side in the browser.)

There shouldn't be much content in this landing page itself, just a brief
overview of the lectures included below.

### Creating a new lecture

Now you can create your new lecture `foo`: With
**`make new_lecture-cy TOPIC=wuppie/fluppie/foo`** you create the new lecture
`foo` under the chapter structure `wuppie/fluppie/`. This is a folder (i.e.
`markdown/wuppie/fluppie/foo/`) that contains all the files for this lecture.

The file **`index.md`** is the main file of the lecture, in addition there is
a file `outcomes.md` (for the learning objectives) and the subfolders
**`images/`** (for local images) and the subfolder **`files/`**.

In the sub-folder **'files/'** you can place the **slides sketched on your iPad
as a PDF file**. These are then automatically linked in the generated web page.

This new lecture is now automatically processed when the web page is generated.

If you also want to create PDF slides for the new lecture, you need to add the
entry **`SRC += wuppie/fluppie/foo`** to the [`Makefile`](Makefile) (around
line 65). This also applies if you need pre-processing by Pandoc for the website.

You would probably also like to add the new lecture to the schedule
**`data/schedule.yaml`**. If `foo` is unique, you can just use `foo` as
"`topic`", otherwise use the full path `wuppie/fluppie/foo`.

In the YAML header of your file `index.md`, you can delete the fields you do
not need, e.g. `youtube`, `fhmedia`, `quizzes`, `assignments`, `attachments`,
`menuTitle` ...

Mandatory are `type` (please do not change), `title` and `author` (adjust if
necessary), `weight` (controls the sorting order in the menu on the respective
level) and `readings` (if you want to have a bibliography without citations).

The three dashes at the beginning and end of the YAML section are relevant,
as are the indentation and, if necessary, the dashes.

From the archetypes, a complete YAML header with all available elements is copied
into the `index.md` and populated with dummy values so you can quickly orientate
yourself by the examples.
