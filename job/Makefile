job.pdf: $(wildcard *.tex) Makefile ../figures_naturalli.tex ../figures_kbp.tex ../macros.tex std-macros.tex
	@pdflatex job
	@bibtex job
	@pdflatex job

clean:
	rm -f *.aux *.log *.bbl *.blg present.pdf *.bak *.ps *.dvi *.toc *.vrb *.nav *.out *.snm *.pdf

dist: job.pdf
	@pdflatex job

default: job.pdf
