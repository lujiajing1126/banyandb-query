FLATC ?= flatc

fbs := $(wildcard protocol/*.fbs)

.PHONY: protocol
protocol: $(fbs)
	@echo "compiling schema..."
	$(FLATC) --go $^