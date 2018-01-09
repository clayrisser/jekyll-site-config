CWD := $(shell pwd)

.PHONY: all
all: clean

.PHONY: build
build:
	@gem build *.gemspec
	@echo ::: BUILD :::

.PHONY: push
push:
	@gem push *.gem
	@echo ::: PUSH :::

.PHONY: clean
clean:
	-@rm -rf *.gem &>/dev/null || true
	@echo ::: CLEAN :::
