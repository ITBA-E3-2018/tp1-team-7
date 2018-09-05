# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = comp2_tb

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/comp2_tb.v ) 

OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f


# Report file
DOCDIR = doc
DOC_OUTPUT_FILE = pdf
REPORT_FILE = ej4
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.log *.fdb_latexmk *.fls


all: $(BINDIR)/$(TARGET) $(SOURCES) $(DOC_OUTPUT_FILE)/$(REPORT_FILE)

$(DOC_OUTPUT_FILE)/$(REPORT_FILE): 
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(DOC_OUTPUT_FILE) -pdf  $(DOCDIR)/$(REPORT_FILE).tex
	cd $(DOC_OUTPUT_FILE)
	rm -rf $(OTHER)
	cd ..


$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/comb2_tb!"
	

.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@$(rm) $(BINDIR)/$(TARGET_B)
	@$(rm) $(DOCFILE)/$(REPORT_FILE)
	@echo "Output removed!"

.PHONY: clean
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"
