#!make

TESTS = $(shell find test -name "*.coffee" -not -path "*test/helpers*" -not -path "*test/specs*" -not -path "*test/fixtures*")
LINT_CODE = $(shell find lib -name "*.coffee") *.coffee
LINT_TEST = $(shell find test -name "*.coffee")

test:
	@NODE_ENV=development ./node_modules/.bin/mocha $(TESTS)

lint:
	@NODE_ENV=test ./node_modules/.bin/coffeelint $(LINT_CODE) $(LINT_TEST)

.PHONY: test
