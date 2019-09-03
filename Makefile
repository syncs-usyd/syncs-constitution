RST2XETEX ?= rst2xetex
RST2XETEX_OPTS =

constitution.pdf: constitution.tex
	xelatex $^
	xelatex $^

constitution.tex: constitution.rst
	$(RST2XETEX) $(RST2XETEX_OPTS) $^ > $@

clean:
	rm -f constitution.pdf constitution.tex

.PHONY: clean
