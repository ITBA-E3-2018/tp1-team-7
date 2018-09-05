# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = decoder
TARGET_B = mux

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/decoder_tb.v ) 
SOURCES_B  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/mux_tb.v )

OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

all: $(BINDIR)/$(TARGET) $(SOURCES) $(BINDIR)/$(TARGET_B) $(SOURCES_B)

$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/decoder!"


$(BINDIR)/$(TARGET_B): $(SOURCES_B)
	@$(COMPILER) $(SOURCES_B) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/mux"


.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@$(rm) $(BINDIR)/$(TARGET_B)
	@echo "Executable removed!"

.PHONY: clean
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"
