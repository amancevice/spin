PREFIX := /usr/local

test:
	./bin/spin -- ./bin/example
	./bin/spin -o -- ./bin/example
	./bin/spin -C -- ./bin/example
	! ./bin/spin -- ./bin/example 127
	! ./bin/spin -T 1 -- ./bin/example

install:
	ln -sf $$PWD/bin/spin $(PREFIX)/bin/spin

uninstall:
	rm $(PREFIX)/bin/spin

.PHONY: install test uninstall
