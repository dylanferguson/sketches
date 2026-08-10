OXFMT := mise exec -- bunx oxfmt@0.62.0

.PHONY: setup dev format check

setup:
	mise install

dev:
	mise exec -- bun */index.html --console

format:
	$(OXFMT) --write README.md '**/*.html'

check:
	$(OXFMT) --check README.md '**/*.html'
