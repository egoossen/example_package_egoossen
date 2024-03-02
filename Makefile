build:
	python3 -m build

test_build: build
	python3 -m venv .venv
	.venv/bin/python -m pip install pytest
	.venv/bin/python -m pip install --find-links=./dist example_package_egoossen
	.venv/bin/pytest
	rm -rf .venv

.PHONY: build test_build
