OPENSCAD := openscad

CASE_DIR := case

# Find all .scad files except common.scad (which are libraries)
SCAD_FILES := $(shell find $(CASE_DIR) -name '*.scad' ! -name 'common.scad')
STL_FILES := $(SCAD_FILES:.scad=.stl)

# Find all common.scad files (shared libraries)
COMMON_FILES := $(shell find $(CASE_DIR) -name 'common.scad')

.PHONY: all clean case

all: case

case: $(STL_FILES)

# STL files depend on their source and all common.scad files
%.stl: %.scad $(COMMON_FILES)
	$(OPENSCAD) -o $@ $<

clean:
	rm -f $(STL_FILES)
