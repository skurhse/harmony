SHELL = /usr/bin/env bash

VENV = .venv

.PHONY: apt-get install pip venv

install : apt-get venv pip

apt-get:
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

