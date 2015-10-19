#!make

TESTS = $(shell find test -name "*.coffee" -not -path "*test/helpers*" -not -path "*test/specs*" -not -path "*test/fixtures*")

test:
	@NODE_ENV=development ./node_modules/.bin/mocha $(TESTS)

.PHONY: test
