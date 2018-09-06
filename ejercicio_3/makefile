# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = decoder
TARGET_B = mux
TARGET_C = newmux
TARGET_D = newdecoder

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/decoder_tb.v ) 
SOURCES_B  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/mux_tb.v )
SOURCES_C  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/newdecoder_tb.v ) 
SOURCES_D  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/newmux_tb.v )

OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

all: $(BINDIR)/$(TARGET) $(SOURCES) $(BINDIR)/$(TARGET_B) $(SOURCES_B) $(BINDIR)/$(TARGET_C) $(SOURCES_D) 

$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/decoder"


$(BINDIR)/$(TARGET_B): $(SOURCES_B)
	@$(COMPILER) $(SOURCES_B) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/mux"

$(BINDIR)/$(TARGET_C): $(SOURCES_C)
	@$(COMPILER) $(SOURCES_C) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/newmux"

$(BINDIR)/$(TARGET_D): $(SOURCES_D)
	@$(COMPILER) $(SOURCES_D) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/newdecoder"


.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@$(rm) $(BINDIR)/$(TARGET_B)
	@$(rm) $(BINDIR)/$(TARGET_C)
	@$(rm) $(BINDIR)/$(TARGET_D)
	@echo "Executable removed!"

.PHONY: clean
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"
