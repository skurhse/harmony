# NOTE: To see a list of typical targets, execute `make help` <skr 2022-07>

.PHONY: help
help:
	@echo
	@echo 'Main targets:'
	@echo 'install - runs all install targets'
	@echo 'run     - runs harmony'
	@echo
	@echo 'Install targets:'
	@echo 'apt     - installs apt packages (pip, venv)'
	@echo 'pip     - installs pip packages from requirements.txt'
	@echo 'venv    - creates the python virtual environment'
	@echo

SHELL = /usr/bin/env bash

VENV = .venv

.PHONY: apt-get install pip venv

install : apt pip venv

apt:
	sudo apt-get update
	sudo apt-get install python3-pip python3-venv

venv : $(VENV)
$(VENV):
	python3 -m venv .venv

pip: $(VENV)
	$(call activate); \
	pip install -r requirements.txt

define activate
	source $(VENV)/bin/activate
endef

.PHONY: run
run : pip
	src/main.py

