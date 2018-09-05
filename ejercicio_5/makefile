# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = ej5

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/program/*.v $(SRCDIR)/tests/ej5test.v )

OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

all: $(BINDIR)/$(TARGET) $(SOURCES) $(BINDIR)/$(TARGET_B) $(SOURCES_B) $(BINDIR)/$(TARGET_C) $(SOURCES_C) $(BINDIR)/$(TARGET_D) $(SOURCES_D) $(BINDIR)/$(TARGET_E) $(SOURCES_E)

$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete!"

.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Output files removed!"

.PHONY: clean
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"
