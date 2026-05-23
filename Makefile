CC ?= clang
CFLAGS ?= -std=c17 -ObjC -Wall -Wextra -pedantic -O2
LDFLAGS ?= -framework Foundation
BIN := build/objective-c-stakeholder
SRC := src/main.m

.PHONY: all compiler-proof test clean

all: $(BIN)

$(BIN): $(SRC)
	mkdir -p build
	$(CC) $(CFLAGS) $(SRC) $(LDFLAGS) -o $(BIN)

compiler-proof:
	$(CC) --version | sed -n '1,3p'

test: $(BIN)
	BIN=./$(BIN) tests/test_cli.sh

clean:
	rm -rf build
