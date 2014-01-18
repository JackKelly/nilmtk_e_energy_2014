FILENAME = main

$(FILENAME).pdf: $(FILENAME).tex
	make clean
	pdflatex $(FILENAME).tex
	bibtex $(FILENAME).aux
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

clean:
	rm -f $(FILENAME).aux $(FILENAME).bbl $(FILENAME).blg $(FILENAME).dvi $(FILENAME).log $(FILENAME).out
