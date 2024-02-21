test:
	./bin/spin -b -o -- ./bin/example
	./bin/spin -- ./bin/example
	! ./bin/spin -- ./bin/example 127

install:
	sudo ln -sf $$PWD/bin/spin /usr/local/bin/spin

.PHONY: install test
