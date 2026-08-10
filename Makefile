OXFMT := mise exec -- bunx oxfmt@0.62.0

.PHONY: setup dev format check

setup:
	mise install

dev:
	cd sketches && mise exec -- bun index.html */index.html --console

format:
	$(OXFMT) --write README.md 'sketches/**/*.html'

check:
	$(OXFMT) --check README.md 'sketches/**/*.html'
