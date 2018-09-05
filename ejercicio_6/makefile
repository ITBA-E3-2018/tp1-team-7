# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = test_alu
TARGET_B = test_adder
TARGET_C = test_full_adder
TARGET_D = test_adder_4bit
TARGET_E = test_mux

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/*.v $(SRCDIR)/tests/test_alu.v ) 
SOURCES_B  := $(wildcard $(SRCDIR)/*.v $(SRCDIR)/tests/test_adder.v ) 
SOURCES_C  := $(wildcard $(SRCDIR)/*.v $(SRCDIR)/tests/test_full_adder.v ) 
SOURCES_D  := $(wildcard $(SRCDIR)/*.v $(SRCDIR)/tests/test_adder_4bit.v ) 
SOURCES_E  := $(wildcard $(SRCDIR)/*.v $(SRCDIR)/tests/test_mux.v ) 

OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

all: $(BINDIR)/$(TARGET) $(SOURCES) $(BINDIR)/$(TARGET_B) $(SOURCES_B) $(BINDIR)/$(TARGET_C) $(SOURCES_C) $(BINDIR)/$(TARGET_D) $(SOURCES_D) $(BINDIR)/$(TARGET_E) $(SOURCES_E)

$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete!"
$(BINDIR)/$(TARGET_B): $(SOURCES_B)
	@$(COMPILER) $(SOURCES_B) $(CFLAGS) -o $@
	@echo "Compilation complete B!"
$(BINDIR)/$(TARGET_C): $(SOURCES_C)
	@$(COMPILER) $(SOURCES_C) $(CFLAGS) -o $@
	@echo "Compilation complete C!"
$(BINDIR)/$(TARGET_D): $(SOURCES_D)
	@$(COMPILER) $(SOURCES_D) $(CFLAGS) -o $@
	@echo "Compilation complete D!"
$(BINDIR)/$(TARGET_E): $(SOURCES_E)
	@$(COMPILER) $(SOURCES_E) $(CFLAGS) -o $@
	@echo "Compilation complete E!"

.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@$(rm) $(BINDIR)/$(TARGET_B)
	@$(rm) $(BINDIR)/$(TARGET_C)
	@$(rm) $(BINDIR)/$(TARGET_D)
	@$(rm) $(BINDIR)/$(TARGET_E)
	@echo "Output files removed!"

.PHONY: clean
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"
