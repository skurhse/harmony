.PHONY: reqs
reqs:
	sudo apt-get update
	sudo apt-get install python3-pip python3-venv
	pip3 install --upgrade discord.py

