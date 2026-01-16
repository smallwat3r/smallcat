OPENSCAD := openscad

CASE_DIR := case

# Find all .scad files except common.scad (which are libraries)
SCAD_FILES := $(shell find $(CASE_DIR) -name '*.scad' ! -name 'common.scad')
STL_FILES := $(SCAD_FILES:.scad=.stl)

.PHONY: all clean case

all: case

case: $(STL_FILES)

%.stl: %.scad
	$(OPENSCAD) -o $@ $<

clean:
	rm -f $(STL_FILES)
