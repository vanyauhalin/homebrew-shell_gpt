.DEFAULT_GOAL := help

.PHONY: help
help: #     Show help information.
	@grep -E "^[a-z-]+: #" $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ": # "}; {printf "%s: %s\n", $$1, $$2}'

.PHONY: install
install: #  Install development dependencies.
	@bundle install

.PHONY: lint
lint: #     Lint for the style.
	@bundle exec rubocop

.PHONY: aliases
aliases: #  Generate aliases.
	@ruby ./scripts/aliases.rb
