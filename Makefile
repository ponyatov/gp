# var
APP = $(notdir $(CURDIR))

# tool
PY  = bin/python3
PIP = bin/pip3

# install
.PHONY: install update
install:
	$(MAKE) update
	make $(PY) $(PIP)
update:
	sudo apt update
	sudo apt install -uy `cat apt.Debian`

$(PY) $(PIP):
	python3 -m venv .
	bin/pip3 install -U pip
	bin/pip3 install -U -r requirements.txt

# ai
.PHONY: ai tmp/$(APP).ai.md
ai: tmp/$(APP).ai.md
tmp/$(APP).ai.md:
	cat doc/*.md README.md > $@
