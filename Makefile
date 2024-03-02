all:

test: .env/
	.env/bin/python -m pytest

.env/:
	python3 -m venv .env
	.env/bin/python -m pip install -e .
	.env/bin/python -m pip install pytest
	touch .env/

build:
	python3 -m build

test_build: build
	python3 -m venv .venv
	.venv/bin/python -m pip install pytest
	.venv/bin/python -m pip install --find-links=./dist example_package_egoossen
	.venv/bin/pytest
	rm -rf .venv

.PHONY: all test build test_build
