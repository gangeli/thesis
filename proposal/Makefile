naturalli.pdf: $(wildcard *.tex) Makefile ../figures_naturalli.tex ../macros.tex std-macros.tex
	@pdflatex present
	@bibtex present
	@pdflatex present
	@pdflatex present

clean:
	rm -f *.aux *.log *.bbl *.blg present.pdf *.bak *.ps *.dvi

fast:
	@pdflatex present

default: present.pdf
