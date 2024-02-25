PREFIX := /usr/local

test:
	./bin/spin --help
	@echo
	./bin/spin --version
	@echo
	./bin/spin -- bin/example
	@echo
	./bin/spin -o -- bin/example
	@echo
	./bin/spin -f -- bin/example
	@echo
	./bin/spin -C -- bin/example
	@echo
	! ./bin/spin -- bin/example 127
	@echo
	! ./bin/spin -T 1 -- bin/example

install:
	ln -sf $$PWD/bin/spin $(PREFIX)/bin/spin

uninstall:
	rm $(PREFIX)/bin/spin

.PHONY: install test uninstall
