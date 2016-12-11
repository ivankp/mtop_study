PDF := $(patsubst plots/%.plot,%.pdf,$(wildcard plots/*.plot))
RATIOS := $(filter %_ratio.pdf,$(PDF))

ROOT_CFLAGS := $(shell root-config --cflags)
ROOT_LIBS   := $(shell root-config --libs)

all: $(PDF) bin/ratio

$(PDF): %.pdf: plots/%.plot
	rxplot -c $< -o $@

bin/%: src/%.cc
	@mkdir -p bin
	g++ -Wall -O3 $(ROOT_CFLAGS) -std=c++1z $^ -o $@ $(ROOT_LIBS)

data/ratio.root: bin/ratio
	$< data/inf.root data/finite.root $@

clean:
	rm -fv $(PDF)

$(RATIOS): data/ratio.root

