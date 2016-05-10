thesis.pdf: $(wildcard *.tex) $(wildcard chapters/natlog/*.tex)  $(wildcard chapters/naturalli/*.tex) $(wildcard chapters/openie/*.tex) $(wildcard chapters/qa/*.tex)  Makefile figures_naturalli.tex figures_kbp.tex macros.tex std-macros.tex
	@pdflatex thesis
	@bibtex thesis
	@pdflatex thesis

clean:
	rm -f *.aux *.log *.bbl *.blg present.pdf *.bak *.ps *.dvi

dist: thesis.pdf
	@pdflatex thesis

default: thesis.pdf
