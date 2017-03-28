HJ := $(wildcard H?j)

.PHONY: all $(HJ)

all: $(HJ)

$(HJ):
	$(MAKE) -C $@

clean:
	for hj in $(HJ); do $(MAKE) -C $$hj clean; done

