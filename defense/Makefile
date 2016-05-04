defense.pdf: $(wildcard *.tex) Makefile ../figures_naturalli.tex ../figures_kbp.tex ../macros.tex std-macros.tex
	@pdflatex defense
	@bibtex defense
	@pdflatex defense

clean:
	rm -f *.aux *.log *.bbl *.blg present.pdf *.bak *.ps *.dvi

dist: defense.pdf
	@pdflatex defense

default: defense.pdf
