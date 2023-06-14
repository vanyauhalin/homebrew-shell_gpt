.DEFAULT_GOAL := help

.PHONY: help
help: #     Show help message.
	@grep -E "^[a-z-]+: #" $(MAKEFILE_LIST) | \
		sort --dictionary-order | \
		awk 'BEGIN {FS = ": # "}; {printf "%s: %s\n", $$1, $$2}'

.PHONY: dev
install: #  Install dependencies.
	@bundle install

.PHONY: lint
lint: #     Lint the formula.
	@bundle exec rubocop
