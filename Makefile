PDF := $(patsubst plots/%.plot,%.pdf,$(wildcard plots/*.plot))
RATIOS := $(filter %_ratio.pdf,$(PDF))

all: $(PDF)

$(PDF): %.pdf: plots/%.plot
	rxplot -c $< -o $@

data/ratio.root:
	hrat data/inf.root data/finite.root $@

clean:
	@rm -fv $(PDF)

$(RATIOS): data/ratio.root

