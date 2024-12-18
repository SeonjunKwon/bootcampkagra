TEX = pdflatex
TEX_FLAGS = -shell-escape -interaction=nonstepmode -synctex=1
MAIN_TEX = main.tex
OUTPUT = main.pdf

all: $(OUTPUT)

$(OUTPUT): $(MAIN_TEX)
	$(TEX) $(TEX_FLAGS) $(MAIN_TEX)

clean:
	rm -f *.aux *.log *.synctex.gz *.out *.toc

distclean: clean
	rm -f $(OUTPUT)
