# syncs-constitution

This is a copy of the Sydney Computing Society (SYNCS) constitution
as a reStructuredText document, tracked in git, accompanied with a Makefile
to build the rST file to a PDF.

The constitution itself can be found in the file [constitution.rst](constitution.rst).

# Build requirements
* [docutils](http://docutils.sourceforge.net)
* a working XeLaTeX install (such as TeX Live)

# Building
```sh
make
```

The output is a file called `constitution.pdf`.

# Creating a release

1. Tag the commit locally using `git tag <tag-name>`. The `<tag-name>` should be the date of the constitution change in `YYYY-MM-DD` format.
2. Push the tag to Github by using `git push origin <tag-name>`. This will trigger a Github Action to automatically build and publish the constitution in pdf.
