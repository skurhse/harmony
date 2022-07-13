.PHONY: reqs
reqs:
	sudo apt-get update
	sudo apt-get install python3-pip python3-venv
	python3 -m pip install --upgrade discord.py

venv:
	python3 -m venv .
