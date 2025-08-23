# KI-Vorlesung: Lecture Materials Build System

This repository contains lecture materials for a German university AI course (Künstliche Intelligenz) that uses Pandoc with custom tooling to build various output formats from Markdown sources.

**ALWAYS follow these instructions first and only fallback to search or bash commands when you encounter unexpected information that does not match the info here.**

## Working Effectively

### Bootstrap and Build the Repository

**CRITICAL: Set timeout to 60+ minutes for all build commands. NEVER CANCEL builds even if they appear to hang.**

1. **Clone pandoc-lecture-zen tooling:**
   ```bash
   git clone https://github.com/cagix/pandoc-lecture-zen.git .pandoc
   ```
   - **NOTE**: SSH clone (`git@github.com:cagix/pandoc-lecture-zen.git`) fails due to access restrictions - always use HTTPS
   - Takes ~30 seconds to complete

2. **Install build dependencies:**
   ```bash
   sudo apt update && sudo apt install -y pandoc
   ```
   - Takes ~2-3 minutes
   - **Docker alternative**: The Makefile uses Docker containers by default, but native pandoc works better in most environments

3. **Enable native pandoc (recommended):**
   ```bash
   echo "PANDOC_MIN = pandoc" > local.mk
   echo "PANDOC_EXT = pandoc" >> local.mk
   echo "include local.mk" >> Makefile
   ```
   - This overrides Docker containers with native pandoc installation

4. **Build lecture materials:**
   ```bash
   make gfm
   ```
   - Takes ~10 seconds for full clean build. NEVER CANCEL.
   - Produces GitHub Flavored Markdown output in `_gfm/` directory
   - **WARNINGS** about "columns" and "definition lists" are normal and can be ignored

5. **Alternative build targets:**
   ```bash
   make docsify    # Takes ~10 seconds - builds documentation website format
   make clean      # Removes temporary files only
   make distclean  # Removes all generated output (_gfm/ directory)
   ```

6. **PDF/Beamer builds (advanced):**
   ```bash
   make pdf     # Requires LaTeX - will fail without full TeX installation
   make beamer  # Requires LaTeX - will fail without full TeX installation
   ```
   - **NOTE**: PDF builds require additional LaTeX packages not installed by default
   - Error "Could not find data file eisvogel.latex" is expected without full TeX setup

## Validation

### Manual Testing Requirements

**ALWAYS manually validate changes by building and examining output:**

1. **After making content changes:**
   ```bash
   make distclean && make gfm
   ```
   - Verify build completes without new errors
   - Check that `_gfm/` directory contains expected output files

2. **Content validation scenarios:**
   - Navigate to `_gfm/readme.md` and verify main course description renders correctly
   - Check `_gfm/lecture/` subdirectories contain course materials
   - Verify `_gfm/homework/` contains assignment files
   - Test that images are copied correctly (e.g., `_gfm/lecture/intro/images/`)

3. **Build system validation:**
   ```bash
   ls -la _gfm/  # Should show readme files and lecture/, homework/, admin/ directories
   head -20 _gfm/readme.md  # Should show German course title and description
   ```

### GitHub Actions Integration

- **CI builds test all formats**: The repository has automated testing via `.github/workflows/tests.yaml`
- Tests run `beamer`, `gfm`, `docsify`, and `pdf` targets on every pull request
- **Deployment**: `gfm.yaml` workflow publishes to `_w25` branch, `beamer.yaml` to `_beamer` branch

## Common Tasks

### Repository Structure (use this info instead of searching)

```
KI-Vorlesung/
├── Makefile              # Build orchestration (uses .pandoc/Makefile)
├── ki.yaml              # Main metadata configuration
├── .pandoc/             # Pandoc-lecture-zen tooling (cloned from external repo)
├── lecture/             # Course content organized by topic
│   ├── intro/           # Introduction and problem solving
│   ├── nn/              # Neural networks 
│   ├── dtl/             # Decision trees and learning
│   ├── csp/             # Constraint satisfaction problems
│   ├── naivebayes/      # Naive Bayes and probability
│   └── ea/              # Evolutionary algorithms
├── homework/            # Assignment sheets (sheet-*.md)
├── admin/               # Administrative files (exams, schedules)
├── readme.md            # Main course description
├── readme_hsbi.md       # HSBI-specific course info
└── readme_tdu.md        # TDU-specific course info
```

### Build System Details

**File Processing:**
- Pandoc processes `.md` files using custom Lua filters
- Images are copied automatically from source to output directories
- Metadata from `ki.yaml` is applied to all documents
- Bibliography references from `ki.bib` are processed

**Output Structure:**
- `_gfm/` - GitHub Flavored Markdown (primary output)
- `_docsify/` - Documentation website format
- `_beamer/` - PDF slides (requires LaTeX)
- `_pdf/` - PDF documents (requires LaTeX)

### Timing Expectations

- **Pandoc tooling clone**: ~30 seconds
- **Package installation**: ~2-3 minutes  
- **Clean GFM build**: ~10 seconds (NEVER CANCEL)
- **Incremental builds**: <1 second
- **Docsify build**: ~10 seconds (NEVER CANCEL)

### Content Development Workflow

1. **Edit lecture content**: Modify `.md` files in `lecture/` subdirectories
2. **Test locally**: Run `make gfm` to verify syntax and structure
3. **Review output**: Check `_gfm/` for correct formatting
4. **Validate images**: Ensure images copy correctly and display properly

### Troubleshooting

**Common Issues:**
- SSH clone failure → Use HTTPS clone instead
- Docker container errors → Use native pandoc with local.mk override
- Missing LaTeX templates → PDF/Beamer builds require full TeX installation
- Warnings about "columns" or "definition lists" → Normal for GFM output, can be ignored

**Build Failures:**
- If build stops unexpectedly, check that `.pandoc/` directory exists and is complete
- Syntax errors in Markdown will cause pandoc to fail - check error output for file/line
- Missing images will not fail build but should be verified in output

### Key Projects in Codebase

1. **Course Content** (`lecture/`): Comprehensive AI course materials in German
2. **Assessment Materials** (`homework/`): Programming and theoretical assignments  
3. **Administrative** (`admin/`): Exam information and course logistics
4. **Build Tooling** (`.pandoc/`): Sophisticated Pandoc-based publishing system
5. **Metadata** (`ki.yaml`, `ki.bib`): Course configuration and bibliography

**Content Topics Include:**
- Neural Networks and Machine Learning
- Decision Trees and Learning Theory  
- Constraint Satisfaction Problems
- Naive Bayes and Probability
- Evolutionary Algorithms
- Search and Problem Solving

This is an academic repository focused on content creation and publishing rather than software development.