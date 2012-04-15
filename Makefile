LATEX 		= pdflatex
SRC			= $(shell ls *.tex)
PDF			= $(SRC:%.tex=%.pdf)

pdf: $(PDF) clean

$(PDF) : %.pdf : %.tex
	$(LATEX) $<

clean:
	#$(RM) *.log *.aux *.thm
	$(RM) *.log

.PHONY: clean
