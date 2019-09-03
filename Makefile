RST2XETEX_OPTS = --compound-enumerators --section-prefix-for-enumerators --section-enumerator-separator=. --stylesheet=parskip

constitution.pdf: constitution.tex
	xelatex $^

constitution.tex: constitution.rst
	rst2xetex $(RST2XETEX_OPTS) $^ > $@

clean:
	rm -f constitution.pdf constitution.tex

.PHONY: clean
