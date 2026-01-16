OPENSCAD := openscad

CASE_DIR := case
SCAD_FILES := $(wildcard $(CASE_DIR)/*/*.scad)
STL_FILES := $(SCAD_FILES:.scad=.stl)

.PHONY: all clean case

all: case

case: $(STL_FILES)

%.stl: %.scad
	$(OPENSCAD) -o $@ $<

clean:
	rm -f $(STL_FILES)
