PDF := $(patsubst ../plots/%.plot,%.pdf,$(wildcard ../plots/*.plot))
RATIOS := $(filter %_ratio.pdf,$(PDF))

.PHONY: all

all: $(PDF)

$(PDF): %.pdf: ../plots/%.plot
	rxplot -c $< -o $@

data/ratio.root:
	hrat data/inf.root data/finite.root $@

clean:
	@rm -fv data/ratio.root $(PDF)

$(RATIOS): data/ratio.root

