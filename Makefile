RST2XETEX ?= rst2xetex.py
RST2XETEX_OPTS = --no-section-numbering

constitution.pdf: constitution.tex
	latexmk -pdfxe $^

constitution.tex: constitution.rst
	$(RST2XETEX) $(RST2XETEX_OPTS) $^ > $@

clean:
	rm -f constitution.pdf constitution.tex

.PHONY: clean
