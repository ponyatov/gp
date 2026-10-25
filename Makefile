APP = $(notdir $(CURDIR))

.PHONY: ai tmp/$(APP).ai.md
ai: tmp/$(APP).ai.md
tmp/$(APP).ai.md:
	cat doc/*.md README.md > $@
