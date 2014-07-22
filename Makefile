TARGET=kalibro

all: $(TARGET).tex
	pdflatex $(TARGET).tex
	bibtex $(TARGET)
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex
	evince $(TARGET).pdf &

edit:
	gedit Makefile *.bib *.tex &

clean:
	rm -f $(TARGET).pdf *.aux *.log *.blg *.bbl *.dvi *.ps *.toc *.lot *.lof *.idx *~

