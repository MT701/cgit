CC = clang
CFLAGS = -Wall -Wextra -Iinclude

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