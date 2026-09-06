CC = clang

# std = C standard (using c23) like choosing a PHP version
# Wall = broad set of common warnings
# Wextra = extra useful warnings
# Iinclude = Search the include directory for headers
# g = include debug information

CFLAGS = -std=c23 -Wall -Wextra -Iinclude -g

build: cgit

cgit: src/main.c
	$(CC) $(CFLAGS) $^ -o $@

run: build
	./cgit

test: build
	test "$$(./cgit)" = "Hello, World!"

clean:
	rm -f cgit

.PHONY: build run test clean