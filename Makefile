install:
	sudo ln -sf $$PWD/bin/spin /usr/local/bin/spin

test:
	./bin/spin -- ./bin/spin-example
	! ./bin/spin -- ./bin/spin-example 127

.PHONY: install test
