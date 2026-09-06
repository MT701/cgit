CC = clang
CFLAGS = -Wall -Wextra -Iinclude

cgit: src/main.c
	$(CC) $(CFLAGS) $^ -o cgit

test: cgit
	test "$$(./cgit)" = "Hello, World!"

clean:
	rm -f cgit

.PHONY: test clean