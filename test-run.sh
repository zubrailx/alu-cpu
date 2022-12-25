#!/bin/bash

coverage run -m pytest --verbose
find . -type f -name "*.py" | xargs -t python3 -m coverage report
find . -type f -name "*.py" | xargs -t python3 -m pycodestyle --ignore=E501
find . -type f -name "*.py" | xargs -t python3 -m pylint
find . -type f -name "*.py" | xargs -t mypy --check-untyped-defs --explicit-package-bases --namespace-packages
